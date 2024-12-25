import 'package:flutter/material.dart';
import 'package:tradingview_app/core/constants/color/color_constant.dart';
import 'package:tradingview_app/core/enum/project_icon.dart';

class AppBarNotificationIconButton extends StatelessWidget {
  const AppBarNotificationIconButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {},
      icon: Icon(
        ProjectIcons.notification.getIconData,
        color: ProjectColors.white,
      ),
    );
  }
}
