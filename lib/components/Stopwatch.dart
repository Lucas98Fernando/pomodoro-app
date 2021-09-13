import 'package:flutter/material.dart';
import 'package:pomodoro/components/StopwatchButton.dart';

class Stopwatch extends StatelessWidget {
  const Stopwatch({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.redAccent,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Hora de trabalhar, foco total!',
            style: TextStyle(
              fontSize: 35,
              color: Colors.white,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            '15:00',
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
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: StopwatchButton(
                  textBtn: 'Iniciar',
                  iconBtn: Icons.play_arrow,
                ),
              ),
              // Padding(
              //   padding: const EdgeInsets.only(right: 10),
              //   child: StopwatchButton(
              //     textBtn: 'Parar',
              //     iconBtn: Icons.stop,
              //   ),
              // ),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: StopwatchButton(
                  textBtn: 'Reiniciar',
                  iconBtn: Icons.refresh,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
