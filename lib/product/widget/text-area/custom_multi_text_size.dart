import 'package:flutter/material.dart';
import 'package:tradingview_app/core/extension/context_extension.dart';

class CustomMultiTextSize extends StatelessWidget {
  const CustomMultiTextSize({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: context.multiTextHeight,
      width: context.quarterWidth,
    );
  }
}
