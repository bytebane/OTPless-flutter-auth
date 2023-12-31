import 'package:flutter/material.dart';

enum MyTextType { key, value, header, error }

class MyText extends StatelessWidget {
  const MyText({super.key, required this.text, required this.type});
  final String text;
  final MyTextType type;

  @override
  Widget build(BuildContext context) {
    return Text(text,
        style: type == MyTextType.header
            ? Theme.of(context).textTheme.headlineLarge
            : type == MyTextType.error
                ? Theme.of(context)
                    .textTheme
                    .headlineMedium
                    ?.copyWith(color: Colors.red, fontWeight: FontWeight.bold)
                : type == MyTextType.key
                    ? Theme.of(context).textTheme.headlineMedium
                    : Theme.of(context).textTheme.headlineSmall);
  }
}
