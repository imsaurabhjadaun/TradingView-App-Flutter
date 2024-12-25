import 'package:flutter/material.dart';
import 'package:tradingview_app/core/extension/context_extension.dart';
import 'package:tradingview_app/product/widget/text-area/custom_multi_text_size.dart';
import 'package:tradingview_app/view/_product/widget/text-area/cap_view.dart';
import 'package:tradingview_app/view/_product/widget/text-area/circulation_view.dart';
import 'package:tradingview_app/view/_product/widget/text-area/day_high_view.dart';
import 'package:tradingview_app/view/_product/widget/text-area/day_low_view.dart';
import 'package:tradingview_app/view/_product/widget/text-area/day_vol_view.dart';
import 'package:tradingview_app/view/home/model/crypto.dart';

class TradingViewCryptoInfoInBottom extends StatelessWidget {
  const TradingViewCryptoInfoInBottom({
    required this.crypto,
    super.key,
  });

  final Crypto crypto;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        context.smallHeightSize,
        Row(
          children: [
            DayHighView(crypto: crypto),
            const Spacer(),
            DayLowView(crypto: crypto),
            const Spacer(),
            DayVolView(crypto: crypto),
          ],
        ),
        context.smallHeightSize,
        Row(
          children: [
            CapView(crypto: crypto),
            const Spacer(),
            CirculationView(crypto: crypto),
            const Spacer(),
            const CustomMultiTextSize(),
          ],
        ),
      ],
    );
  }
}
