import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final Color backgroundColor;
  final String txt;
  final VoidCallback onPressed;
  const Button(
      {super.key,
      required this.backgroundColor,
      required this.txt,
      required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 46,
      width: MediaQuery.sizeOf(context).width,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
            backgroundColor: backgroundColor,
            side: BorderSide(
              color: Colors.grey.shade500,
              width: 1,
            ),
            ),
        child: Text(
          txt,
          style: const TextStyle(fontSize: 14, color: Colors.white),
        ),
      ),
    );
  }
}
