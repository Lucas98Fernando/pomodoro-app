import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:pomodoro/components/StopwatchButton.dart';
import 'package:pomodoro/store/pomodoro.store.dart';
import 'package:provider/provider.dart';

class Stopwatch extends StatelessWidget {
  const Stopwatch({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final store = Provider.of<PomodoroStore>(context);
    // Método para autocompletar os minutos e segundos com zeros (0)
    pattern(value) => value.toString().padLeft(2, '0');

    return Observer(
      builder: (_) => Container(
        color: store.isWorking() ? Colors.redAccent : Colors.green,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              store.isWorking()
                  ? 'Hora de trabalhar'
                  : 'Hora de dencansar',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 30,
                color: Colors.white,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              '${pattern(store.minutes)}:${pattern(store.seconds)}',
              style: TextStyle(
                fontSize: 100,
                color: Colors.white,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Se o cronômetro não foi iniciado, exibe o botão de iniciar
                if (!store.started)
                  Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: StopwatchButton(
                      textBtn: 'Iniciar',
                      iconBtn: Icons.play_arrow,
                      onClick: store.startTimer,
                    ),
                  ),
                // Se o cronômetro foi iniciado, exibe o botão de pausar
                if (store.started)
                  Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: StopwatchButton(
                      textBtn: 'Parar',
                      iconBtn: Icons.stop,
                      onClick: store.stopTimer,
                    ),
                  ),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: StopwatchButton(
                    textBtn: 'Reiniciar',
                    iconBtn: Icons.refresh,
                    onClick: store.restartTimer,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
