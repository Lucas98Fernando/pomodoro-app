import 'package:flutter/material.dart';
import 'package:pomodoro/components/TimeInput.dart';
import 'package:pomodoro/components/Stopwatch.dart';

class Pomodoro extends StatelessWidget {
  const Pomodoro({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Stopwatch(),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 30.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                TimeInput(title: 'Trabalhar', value: 1),
                TimeInput(title: 'Descansar', value: 3)
              ],
            ),
          )
        ],
      ),
    );
  }
}
