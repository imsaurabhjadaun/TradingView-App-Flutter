import 'package:flutter/material.dart';
import 'package:tradingview_app/core/constants/color/color_constant.dart';
import 'package:tradingview_app/view/home/model/crypto.dart';

class DayPercentChangeColored extends StatelessWidget {
  const DayPercentChangeColored({required this.crypto, super.key});
  final Crypto crypto;

  @override
  Widget build(BuildContext context) {
    return Text(
      '${crypto.quote?.uSD?.percentChange24h?.toStringAsFixed(2)}%',
      style: Theme.of(context).textTheme.labelSmall?.copyWith(
            color: crypto.quote?.uSD?.percentChange24h.toString().substring(0, 1) == '-'
                ? ProjectColors.cabaret
                : ProjectColors.jungleGreen,
          ),
    );
  }
}
