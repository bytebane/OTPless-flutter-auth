import 'package:flutter/material.dart';

enum MyButtonType { text, elevated }

class MyButton extends StatelessWidget {
  const MyButton(
      {super.key,
      required this.onPressed,
      required this.child,
      required this.type});
  final VoidCallback onPressed;
  final Widget child;
  final MyButtonType type;

  @override
  Widget build(BuildContext context) {
    return type == MyButtonType.text
        ? TextButton(onPressed: onPressed, child: child)
        : ElevatedButton(onPressed: onPressed, child: child);
  }
}
