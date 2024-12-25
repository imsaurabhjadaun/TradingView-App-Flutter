import 'package:flutter/material.dart';
import 'package:tradingview_app/core/constants/color/color_constant.dart';
import 'package:tradingview_app/core/extension/context_extension.dart';
import 'package:tradingview_app/view/_product/tabbar/trading_tabbar_constants.dart';

class TradingviewTabbars extends StatelessWidget {
  const TradingviewTabbars({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TabBar(
      indicatorColor: ProjectColors.dolly,
      indicatorSize: TabBarIndicatorSize.tab,
      labelColor: ProjectColors.dolly,
      labelStyle: Theme.of(context).textTheme.labelMedium?.copyWith(
            color: ProjectColors.manateeLight,
          ),
      labelPadding: context.labelPad,
      indicatorPadding: context.indicatorPad,
      dividerColor: ProjectColors.haitiDark,
      unselectedLabelColor: ProjectColors.manateeLight,
      tabs: TabbarConstants.tabbarItems,
    );
  }
}
