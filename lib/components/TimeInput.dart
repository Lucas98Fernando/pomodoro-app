import 'package:flutter/material.dart';

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
        Row(
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
                primary: Colors.redAccent,
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
                primary: Colors.redAccent,
              ),
            )
          ],
        ),
      ],
    );
  }
}
