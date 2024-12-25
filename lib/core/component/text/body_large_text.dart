import 'package:flutter/material.dart';

class BodyLargeText extends StatelessWidget {
  const BodyLargeText({super.key, required this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: Theme.of(context).textTheme.bodyLarge,
    );
  }
}
