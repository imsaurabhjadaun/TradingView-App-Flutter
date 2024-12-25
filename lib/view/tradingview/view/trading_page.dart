import 'package:flutter/material.dart';
import 'package:tradingview_app/view/home/model/crypto.dart';
import 'package:tradingview_app/view/tradingview/view/trading_view.dart';

class TradingPage extends StatelessWidget {
  const TradingPage({required this.crypto, super.key});
  final Crypto crypto;

  @override
  Widget build(BuildContext context) {
    return TradingView(
      crypto: crypto,
    );
  }
}
