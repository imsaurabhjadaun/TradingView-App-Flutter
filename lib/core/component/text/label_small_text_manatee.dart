import 'package:flutter/material.dart';
import 'package:tradingview_app/core/constants/color/color_constant.dart';

class LabelSmallTextManatee extends StatelessWidget {
  const LabelSmallTextManatee({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: Theme.of(context).textTheme.labelSmall?.copyWith(
            color: ProjectColors.manatee,
            fontWeight: FontWeight.w400,
          ),
    );
  }
}
