import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:pomodoro/components/TimeInput.dart';
import 'package:pomodoro/components/Stopwatch.dart';
import 'package:pomodoro/store/pomodoro.store.dart';
import 'package:provider/provider.dart';

class Pomodoro extends StatelessWidget {
  const Pomodoro({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final store = Provider.of<PomodoroStore>(context);

    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Stopwatch(),
          ),
          Padding(
              padding: const EdgeInsets.symmetric(vertical: 30.0),
              // Criando um trecho observável, onde cada vez que houver uma ação, o valor armazenado no store será alterado
              child: Observer(
                builder: (_) => Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    TimeInput(
                      title: 'Trabalhar',
                      value: store.workTime,
                      increment: store.incrementWorkTime,
                      decrement: store.decrementWorkTime,
                    ),
                    TimeInput(
                      title: 'Descansar',
                      value: store.restTime,
                      increment: store.incrementRestTime,
                      decrement: store.decrementRestTime,
                    )
                  ],
                ),
              ))
        ],
      ),
    );
  }
}
