// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pomodoro.store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$PomodoroStore on _PomodoroStore, Store {
  final _$startedAtom = Atom(name: '_PomodoroStore.started');

  @override
  bool get started {
    _$startedAtom.reportRead();
    return super.started;
  }

  @override
  set started(bool value) {
    _$startedAtom.reportWrite(value, super.started, () {
      super.started = value;
    });
  }

  final _$minutesAtom = Atom(name: '_PomodoroStore.minutes');

  @override
  int get minutes {
    _$minutesAtom.reportRead();
    return super.minutes;
  }

  @override
  set minutes(int value) {
    _$minutesAtom.reportWrite(value, super.minutes, () {
      super.minutes = value;
    });
  }

  final _$secondsAtom = Atom(name: '_PomodoroStore.seconds');

  @override
  int get seconds {
    _$secondsAtom.reportRead();
    return super.seconds;
  }

  @override
  set seconds(int value) {
    _$secondsAtom.reportWrite(value, super.seconds, () {
      super.seconds = value;
    });
  }

  final _$workTimeAtom = Atom(name: '_PomodoroStore.workTime');

  @override
  int get workTime {
    _$workTimeAtom.reportRead();
    return super.workTime;
  }

  @override
  set workTime(int value) {
    _$workTimeAtom.reportWrite(value, super.workTime, () {
      super.workTime = value;
    });
  }

  final _$restTimeAtom = Atom(name: '_PomodoroStore.restTime');

  @override
  int get restTime {
    _$restTimeAtom.reportRead();
    return super.restTime;
  }

  @override
  set restTime(int value) {
    _$restTimeAtom.reportWrite(value, super.restTime, () {
      super.restTime = value;
    });
  }

  final _$intervalTypeAtom = Atom(name: '_PomodoroStore.intervalType');

  @override
  IntervalType get intervalType {
    _$intervalTypeAtom.reportRead();
    return super.intervalType;
  }

  @override
  set intervalType(IntervalType value) {
    _$intervalTypeAtom.reportWrite(value, super.intervalType, () {
      super.intervalType = value;
    });
  }

  final _$_PomodoroStoreActionController =
      ActionController(name: '_PomodoroStore');

  @override
  void startTimer() {
    final _$actionInfo = _$_PomodoroStoreActionController.startAction(
        name: '_PomodoroStore.startTimer');
    try {
      return super.startTimer();
    } finally {
      _$_PomodoroStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void stopTimer() {
    final _$actionInfo = _$_PomodoroStoreActionController.startAction(
        name: '_PomodoroStore.stopTimer');
    try {
      return super.stopTimer();
    } finally {
      _$_PomodoroStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void restartTimer() {
    final _$actionInfo = _$_PomodoroStoreActionController.startAction(
        name: '_PomodoroStore.restartTimer');
    try {
      return super.restartTimer();
    } finally {
      _$_PomodoroStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void incrementWorkTime() {
    final _$actionInfo = _$_PomodoroStoreActionController.startAction(
        name: '_PomodoroStore.incrementWorkTime');
    try {
      return super.incrementWorkTime();
    } finally {
      _$_PomodoroStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void decrementWorkTime() {
    final _$actionInfo = _$_PomodoroStoreActionController.startAction(
        name: '_PomodoroStore.decrementWorkTime');
    try {
      return super.decrementWorkTime();
    } finally {
      _$_PomodoroStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void incrementRestTime() {
    final _$actionInfo = _$_PomodoroStoreActionController.startAction(
        name: '_PomodoroStore.incrementRestTime');
    try {
      return super.incrementRestTime();
    } finally {
      _$_PomodoroStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void decrementRestTime() {
    final _$actionInfo = _$_PomodoroStoreActionController.startAction(
        name: '_PomodoroStore.decrementRestTime');
    try {
      return super.decrementRestTime();
    } finally {
      _$_PomodoroStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
started: ${started},
minutes: ${minutes},
seconds: ${seconds},
workTime: ${workTime},
restTime: ${restTime},
intervalType: ${intervalType}
    ''';
  }
}
