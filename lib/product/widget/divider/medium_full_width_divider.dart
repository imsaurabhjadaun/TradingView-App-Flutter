import 'package:flutter/material.dart';
import 'package:tradingview_app/core/constants/color/color_constant.dart';
import 'package:tradingview_app/core/extension/context_extension.dart';

class MediumFullWidthDivider extends StatelessWidget {
  const MediumFullWidthDivider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Divider(
      color: ProjectColors.haitiDark,
      height: context.smallDividerHeight,
      thickness: context.smallDividerThickenss,
    );
  }
}
