import 'package:flutter/material.dart';

class StopwatchButton extends StatelessWidget {
  final String textBtn;
  final IconData iconBtn;
  final void Function()? onClick;

  const StopwatchButton(
      {Key? key, required this.textBtn, required this.iconBtn, this.onClick})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        primary: Colors.black,
        padding: EdgeInsets.symmetric(
          vertical: 20,
          horizontal: 25,
        ),
        textStyle: TextStyle(fontSize: 20),
      ),
      onPressed: onClick,
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: Icon(this.iconBtn),
          ),
          Text(
            this.textBtn,
          ),
        ],
      ),
    );
  }
}
