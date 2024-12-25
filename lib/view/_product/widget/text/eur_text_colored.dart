import 'package:flutter/material.dart';
import 'package:tradingview_app/core/constants/color/color_constant.dart';
import 'package:tradingview_app/core/extension/context_extension.dart';
import 'package:tradingview_app/product/init/locale/project_keys.dart';
import 'package:tradingview_app/view/home/model/crypto.dart';

class EurTextColored extends StatelessWidget {
  const EurTextColored({required this.crypto, super.key});
  final Crypto crypto;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: context.smallPadAll,
      child: Text(
        ProjectKeys.eur,
        style: Theme.of(context).textTheme.labelLarge?.copyWith(
              fontWeight: FontWeight.w400,
              color: crypto.quote?.uSD?.percentChange24h.toString().substring(0, 1) == '-'
                  ? ProjectColors.cabaret
                  : ProjectColors.jungleGreen,
            ),
      ),
    );
  }
}
