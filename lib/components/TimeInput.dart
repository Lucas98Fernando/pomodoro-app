import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:pomodoro/store/pomodoro.store.dart';
import 'package:provider/provider.dart';

class TimeInput extends StatelessWidget {
  final String title;
  final int value;
  final void Function()? increment;
  final void Function()? decrement;

  const TimeInput(
      {Key? key,
      required this.title,
      required this.value,
      this.increment,
      this.decrement})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final store = Provider.of<PomodoroStore>(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          this.title,
          style: TextStyle(fontSize: 25),
        ),
        SizedBox(
          height: 15,
        ),
        Observer(
          builder: (_) => Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: this.decrement,
                child: Icon(
                  Icons.arrow_downward,
                  color: Colors.white,
                ),
                style: ElevatedButton.styleFrom(
                  shape: CircleBorder(),
                  padding: EdgeInsets.all(10.0),
                  primary: store.isWorking() ? Colors.redAccent : Colors.green,
                ),
              ),
              Text(
                '${this.value} min',
                style: TextStyle(fontSize: 18),
              ),
              ElevatedButton(
                onPressed: this.increment,
                child: Icon(
                  Icons.arrow_upward,
                  color: Colors.white,
                ),
                style: ElevatedButton.styleFrom(
                  shape: CircleBorder(),
                  padding: EdgeInsets.all(10.0),
                  primary: store.isWorking() ? Colors.redAccent : Colors.green,
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
