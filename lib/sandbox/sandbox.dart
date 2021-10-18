// ignore_for_file: cascade_invocations

import 'dart:async';
import 'dart:collection';
import 'dart:convert';
import 'dart:io';
import 'dart:isolate';

import 'package:adb_connect/sandbox/models.dart';

const splitter = LineSplitter();

typedef OnResultCallback = void Function(
  TaskResult result,
  Worker worker,
);

typedef OnErrorCallback = void Function(
  RemoteExecutionError error,
  Worker worker,
);

enum WorkerStatus { idle, processing }

/// Class, that provides `compute` like API for concurrent commands run
class Sanbox {
  Sanbox({this.workersCount = 2, bool verbose = false})
      : assert(workersCount > 0),
        logger = Logger(enabled: verbose);

  final int workersCount;

  final Logger logger;

  final _workers = <Worker>[];

  final _taskQueue = Queue<Task>();

  final _activeTaskCompleters = <Capability, Completer>{};

  bool isRunning = false;

  bool get isProcessing {
    return _workers.any((worker) => worker.status == WorkerStatus.processing) &&
        _taskQueue.isNotEmpty;
  }

  Future<void> start() async {
    if (!isRunning) {
      for (var i = 0; i < workersCount; i++) {
        logger.log('Starting worker $i...');

        final worker = Worker('worker$i');
        await worker.init(onResult: _onTaskSucceed, onError: _onTaskFailed);
        _workers.add(worker);
        logger.log('Worker $i has started');
      }

      isRunning = true;
    }
  }

  Future<CommandResult> run(Command command) async {
    logger.log('Started computation');
    final taskCapability = Capability();
    final taskCompleter = Completer<CommandResult>();

    final task = Task(command: command, capability: taskCapability);

    _activeTaskCompleters[taskCapability] = taskCompleter;

    final freeWorker = _findFreeWorker();

    if (freeWorker == null) {
      logger.log('No free workers, add task to the queue');
      _taskQueue.add(task);
    } else {
      logger.log('Found free worker: ${freeWorker.name}, executing task on it');
      freeWorker.execute(task);
    }

    return taskCompleter.future;
  }

  Future<void> dispose() async {
    logger.log('Turning off ComputeInterface...');
    for (final worker in _workers) {
      await worker.dispose();
    }
    _activeTaskCompleters.forEach((taskCapability, completer) {
      if (!completer.isCompleted) {
        completer.completeError(RemoteExecutionError(
          'Canceled because of computer turn off',
          taskCapability,
        ));
      }
    });
    _activeTaskCompleters.clear();
    _workers.clear();
    _taskQueue.clear();
    isRunning = false;
    logger.log('Turned off ComputeInterface');
  }

  Worker? _findFreeWorker() {
    for (final worker in _workers) {
      if (worker.status == WorkerStatus.idle) return worker;
    }
    return null;
  }

  void _onTaskSucceed(TaskResult result, Worker worker) {
    final taskCompleter = _activeTaskCompleters.remove(result.capability)!;
    taskCompleter.complete(result.result);

    _onTaskFinished(worker);
  }

  void _onTaskFailed(RemoteExecutionError error, Worker worker) {
    final taskCompleter = _activeTaskCompleters.remove(error.taskCapability)!;
    taskCompleter.completeError(error);

    _onTaskFinished(worker);
  }

  void _onTaskFinished(Worker worker) {
    if (_taskQueue.isNotEmpty) {
      logger.log("[${worker.name}] Finished task, queue isn't empty pick task");
      final task = _taskQueue.removeFirst();
      worker.execute(task);
    } else {
      logger.log('[${worker.name}] Finished task, queue is empty');
    }
  }
}

class Worker {
  Worker(this.name);

  final String name;

  WorkerStatus status = WorkerStatus.idle;

  late final Isolate _isolate;
  late final SendPort _sendPort;
  late final ReceivePort _receivePort;
  late final Stream _broadcastReceivePort;
  late final StreamSubscription _broadcastPortSubscription;

  Future<void> init({
    required OnResultCallback onResult,
    required OnErrorCallback onError,
  }) async {
    _receivePort = ReceivePort();

    _isolate = await Isolate.spawn(
      isolateEntryPoint,
      IsolateInitParams(sendPort: _receivePort.sendPort),
      debugName: name,
      errorsAreFatal: false,
    );

    _broadcastReceivePort = _receivePort.asBroadcastStream();

    _sendPort = await _broadcastReceivePort.first as SendPort;

    _broadcastPortSubscription = _broadcastReceivePort.listen((dynamic res) {
      status = WorkerStatus.idle;
      if (res is RemoteExecutionError) {
        onError(res, this);
        return;
      }
      onResult(res as TaskResult, this);
    });
  }

  void execute(Task task) {
    status = WorkerStatus.processing;
    _sendPort.send(task);
  }

  Future<void> dispose() async {
    await _broadcastPortSubscription.cancel();
    _isolate.kill();
    _receivePort.close();
  }
}

class Task {
  Task({required this.command, required this.capability});

  final Command command;
  final Capability capability;
}

class TaskResult {
  TaskResult({required this.result, required this.capability});

  final CommandResult result;
  final Capability capability;
}

class IsolateInitParams {
  IsolateInitParams({required this.sendPort});

  SendPort sendPort;
}

Future<void> isolateEntryPoint(IsolateInitParams params) async {
  final receivePort = ReceivePort();
  final sendPort = params.sendPort;

  sendPort.send(receivePort.sendPort);

  await for (final Task task in receivePort.cast<Task>()) {
    try {
      final output = <String>[];

      final processResult = await Process.run(
        task.command.executable,
        task.command.arguments,
      );

      if (processResult.exitCode == 0 && processResult.stdout != null) {
        for (final line in splitter.convert(processResult.stdout as String)) {
          output.add(line.sanitize);
        }
      }

      if (processResult.exitCode > 0 && processResult.stderr != null) {
        for (final line in splitter.convert(processResult.stderr as String)) {
          output.add(line.sanitize);
        }
      }

      final result = TaskResult(
        result: CommandResult(exitCode: processResult.exitCode, output: output),
        capability: task.capability,
      );

      sendPort.send(result);
    } catch (error) {
      // todo send stderr ?
      sendPort.send(RemoteExecutionError(error.toString(), task.capability));
    }
  }
}

class Logger {
  Logger({required this.enabled});

  final bool enabled;

  void log(String message) {
    if (enabled) {
      // ignore: avoid_print
      print('[Sandbox][${DateTime.now()}] $message');
    }
  }
}

class RemoteExecutionError implements Exception {
  RemoteExecutionError(this.message, this.taskCapability);

  final String message;
  final Capability taskCapability;

  @override
  String toString() => message;
}

extension SanitizeExtension on String {
  String get sanitize => replaceAll("'", '').trim();
}
