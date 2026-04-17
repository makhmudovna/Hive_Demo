import 'package:flutter/material.dart';

class Button extends StatefulWidget {
  final Color backgroundColor;
  final String txt;
  Button({super.key, required this.backgroundColor, required this.txt});

  @override
  State<Button> createState() => _ButtonState();
}

class _ButtonState extends State<Button> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        backgroundColor: widget.backgroundColor,
          side: BorderSide(
            color: Colors.grey.shade500,
            width: 1,
          ),
          minimumSize: const Size(500, 50)),
      child: Text(
        widget.txt,
        style: const TextStyle(fontSize: 14, color: Colors.white),
      ),
    );
  }
}
