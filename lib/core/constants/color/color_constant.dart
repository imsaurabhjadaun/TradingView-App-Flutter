import 'package:flutter/material.dart';

class ProjectColors {
  factory ProjectColors() {
    return _projectColors;
  }

  ProjectColors._internal();
  static final ProjectColors _projectColors = ProjectColors._internal();

  // haiti for background
  static Color get haiti => const Color.fromRGBO(18, 21, 54, 1);
  // haitidark for divider
  static Color get haitiDark => const Color.fromRGBO(13, 17, 42, 1);
  // picton blue for selectem item
  static Color get pictonBlue => const Color.fromRGBO(60, 227, 246, 1);
  // manatee for unselected item
  static Color get manatee => const Color.fromRGBO(139, 141, 162, 1);
  // manatee light for unselected light item
  static Color get manateeLight => const Color.fromRGBO(137, 139, 160, 1);
  // spoonbearl for dropdown text
  static Color get spoonBearl => const Color.fromRGBO(171, 173, 186, 1);
  // white for text
  static Color get white => const Color.fromRGBO(255, 255, 255, 1);
  // dolly for icon
  static Color get dolly => const Color.fromRGBO(254, 240, 141, 1);
  // martinique for button background
  static Color get marinique => const Color.fromRGBO(42, 46, 75, 1);
  // cabaret for down price
  static Color get cabaret => const Color.fromRGBO(212, 70, 86, 1);
  // jungle green up price
  static Color get jungleGreen => const Color.fromRGBO(47, 165, 130, 1);
}
