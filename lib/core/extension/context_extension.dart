import 'package:flutter/material.dart';
import 'package:tradingview_app/core/constants/color/color_constant.dart';

extension ScreenSize on BuildContext {
  double get width => MediaQuery.of(this).size.width;
  double get height => MediaQuery.of(this).size.height;
  double get paddingTop => MediaQuery.of(this).padding.top;
}

extension SizeByScreen on BuildContext {
  double get bodyHeight => height - (paddingTop + kToolbarHeight);
  double get tradingViewWidgetHeight => height * 0.55;
  double get quarterWidth => width * 0.25;
}

extension ProjectSize on BuildContext {
  double get multiTextHeight => 37;
  double get iconMediumHeight => 35;
}

extension SizedBoxSpaces on BuildContext {
  SizedBox get smallHeightSize => SizedBox(height: height * 0.022);
}

extension ProjedtPads on BuildContext {
  EdgeInsets get labelPad => const EdgeInsets.all(15);
  EdgeInsets get indicatorPad => const EdgeInsets.only(bottom: 3);
  EdgeInsets get smallTopPad => const EdgeInsets.only(top: 2);
  EdgeInsets get halfVerticalSmallPad => const EdgeInsets.symmetric(vertical: 8, horizontal: 16);
  EdgeInsets get halfVerticalxSmallPad => const EdgeInsets.symmetric(vertical: 6, horizontal: 12);
  EdgeInsets get smallPadAll => const EdgeInsets.all(4);
}

extension BorderSizes on BuildContext {
  BorderRadius get mediumCircular => BorderRadius.circular(20);
}

extension CustomTheme on BuildContext {
  TextStyle? get poonMediumTheme => Theme.of(this).textTheme.labelMedium?.copyWith(
        fontWeight: FontWeight.w500,
        color: ProjectColors.spoonBearl,
      );
}

extension DividerSize on BuildContext {
  double get smallDividerHeight => 8;
  double get smallDividerThickenss => 4;
}
