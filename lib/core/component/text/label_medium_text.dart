import 'package:flutter/material.dart';

class LabelMediumText extends StatelessWidget {
  const LabelMediumText({
    required this.text,
    super.key,
    this.color,
    this.fontWeight,
  });
  final String text;
  final Color? color;
  final FontWeight? fontWeight;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: Theme.of(context).textTheme.labelLarge?.copyWith(
            color: color,
            fontWeight: fontWeight,
          ),
    );
  }
}
