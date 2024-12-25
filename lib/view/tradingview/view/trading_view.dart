import 'package:flutter/material.dart';
import 'package:tradingview_app/core/extension/context_extension.dart';
import 'package:tradingview_app/view/_product/tabbar/trading_tab_views.dart';
import 'package:tradingview_app/view/_product/tabbar/trading_tabbar_constants.dart';
import 'package:tradingview_app/view/_product/tabbar/trading_view_tabbars.dart';
import 'package:tradingview_app/view/_product/widget/appbar/tradingview_app_bar.dart';
import 'package:tradingview_app/view/home/model/crypto.dart';

class TradingView extends StatelessWidget {
  const TradingView({required this.crypto, super.key});
  final Crypto crypto;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TradingAppBar(crypto: crypto),
      body: DefaultTabController(
        length: TabbarConstants.tabbarItems.length,
        child: SizedBox(
          height: context.bodyHeight,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const TradingviewTabbars(),
              TradingTabViews(crypto: crypto),
            ],
          ),
        ),
      ),
    );
  }
}
