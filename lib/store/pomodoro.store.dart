import 'package:mobx/mobx.dart';

part 'pomodoro.store.g.dart';

// Gerar um novo arquivo automaticamente com o build runner e o mobx codgen
/* 
  Comandos utilizados: 
  - flutter pub run build_runner clean 
  - flutter pub run build_runner watch 
*/
class PomodoroStore = _PomodoroStore with _$PomodoroStore;

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

  @action
  void startTimer() {
    started = true;
  }

  @action
  void stopTimer() {
    started = false;
  }

  @action
  void restartTimer() {
    started = false;
  }

  @action
  void incrementWorkTime() {
    workTime++;
  }

  @action
  void decrementWorkTime() {
    workTime--;
  }

  @action
  void incrementRestTime() {
    restTime++;
  }

  @action
  void decrementRestTime() {
    restTime--;
  }
}
