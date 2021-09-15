import 'dart:async';

import 'package:mobx/mobx.dart';

part 'pomodoro.store.g.dart';

// Gerar um novo arquivo automaticamente com o build runner e o mobx codgen
/* 
  Comandos utilizados: 
  - flutter pub run build_runner clean 
  - flutter pub run build_runner watch 
*/
class PomodoroStore = _PomodoroStore with _$PomodoroStore;

// Enumeração para o tipo de intervalo
enum IntervalType { WORK, REST }

// Classe com mixin do Store do mobx
abstract class _PomodoroStore with Store {
  // Vertificar se o cronômetro foi iniciado
  @observable
  bool started = false;

  @observable
  int minutes = 2;

  @observable
  int seconds = 0;

  @observable
  int workTime = 2;

  @observable
  int restTime = 1;

  @observable
  IntervalType intervalType = IntervalType.WORK;

  // A API do Dart provê o Timer
  Timer? stopwatch;

  @action
  void startTimer() {
    started = true;
    stopwatch = Timer.periodic(Duration(seconds: 1), (timer) {
      // Significa que se o cronômetro está zerado e será necessário alternar o tipo de intervalo
      if (minutes == 0 && seconds == 0) {
        _toggleIntervalType();
      }
      // Se o minuto não é 0, isso quer dizer que os segundos receberá 59 e os minutos serão decrementados
      else if (seconds == 0) {
        seconds = 59;
        minutes--;
      } else {
        seconds--;
      }
    });
  }

  @action
  void stopTimer() {
    started = false;
    stopwatch?.cancel();
  }

  // Quando o método de reiniciar o cronômetro for chamada, ele vai executar o método de parar
  @action
  void restartTimer() {
    stopTimer();
    // Se estiver trabalhando, recebe os minutos do trabalho, se não, recebe os minutos do descanso
    minutes = isWorking() ? workTime : restTime;
    seconds = 0;
  }

  @action
  void incrementWorkTime() {
    if (workTime < 99) {
      workTime++;
      if (isWorking()) {
        restartTimer();
      }
    }
  }

  @action
  void decrementWorkTime() {
    if (workTime > 1) {
      workTime--;
      if (isWorking()) {
        restartTimer();
      }
    }
  }

  @action
  void incrementRestTime() {
    if (restTime < 99) {
      restTime++;
      if (isResting()) {
        restartTimer();
      }
    }
  }

  @action
  void decrementRestTime() {
    if (restTime > 1) {
      restTime--;
      if (isResting()) {
        restartTimer();
      }
    }
  }

  bool isWorking() {
    return intervalType == IntervalType.WORK;
  }

  bool isResting() {
    return intervalType == IntervalType.REST;
  }

  // Método privado para alternar o tipo de intervalo
  void _toggleIntervalType() {
    if (isWorking()) {
      intervalType = IntervalType.REST;
      minutes = restTime;
    } else {
      intervalType = IntervalType.WORK;
      minutes = workTime;
    }
    // Ambos tipos de intervalo recebem o valor mínimo de segundos para 0
    seconds = 0;
  }
}
