import 'package:flutter/material.dart';
import 'package:tradingview_app/core/constants/color/color_constant.dart';

class ProjectTheme {
  final ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    colorSchemeSeed: ProjectColors.haiti,
    brightness: Brightness.dark,
    scaffoldBackgroundColor: ProjectColors.haiti,
    appBarTheme: AppBarTheme(
      backgroundColor: ProjectColors.haiti,
      centerTitle: true,
      iconTheme: IconThemeData(
        color: ProjectColors.white,
      ),
      actionsIconTheme: const IconThemeData(
        color: Colors.white,
      ),
    ),
  );
}
