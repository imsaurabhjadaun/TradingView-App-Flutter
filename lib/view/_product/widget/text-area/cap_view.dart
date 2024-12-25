import 'package:flutter/material.dart';
import 'package:tradingview_app/product/init/locale/project_keys.dart';
import 'package:tradingview_app/product/widget/text-area/custom_multi_text_area.dart';
import 'package:tradingview_app/view/home/model/crypto.dart';

class CapView extends StatelessWidget {
  const CapView({
    required this.crypto,
    super.key,
  });

  final Crypto crypto;

  @override
  Widget build(BuildContext context) {
    return CustomMultiTextArea(
      title: ProjectKeys.cap,
      description: crypto.quote?.uSD?.marketCap?.toStringAsFixed(2) ?? ProjectKeys.notFound,
    );
  }
}
