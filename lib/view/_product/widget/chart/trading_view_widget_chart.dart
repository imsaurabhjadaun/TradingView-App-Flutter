import 'package:flutter/material.dart';
import 'package:tradingview_app/core/extension/context_extension.dart';
import 'package:tradingview_app/view/home/model/crypto.dart';
import 'package:tradingview_app/view/tradingview/service/crypto_name_data_source.dart';
import 'package:tradingview_app/view/tradingview/service/trading_view_html.dart';

class TradingViewWidgetChart extends StatelessWidget {
  const TradingViewWidgetChart({
    required this.crypto,
    super.key,
  });
  final Crypto crypto;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: context.tradingViewWidgetHeight,
      child: Padding(
        padding: context.smallTopPad,
        child: TradingViewWidgetHtml(cryptoName: CryptoNameDataSource.binanceSourceEuro(crypto.symbol.toString())),
      ),
    );
  }
}
