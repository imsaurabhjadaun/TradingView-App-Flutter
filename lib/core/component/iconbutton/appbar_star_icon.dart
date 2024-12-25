import 'package:flutter/material.dart';
import 'package:tradingview_app/core/constants/color/color_constant.dart';
import 'package:tradingview_app/core/enum/project_icon.dart';

class AppBarStarIconButton extends StatelessWidget {
  const AppBarStarIconButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {},
      icon: Icon(
        ProjectIcons.star.getIconData,
        color: ProjectColors.dolly,
      ),
    );
  }
}
