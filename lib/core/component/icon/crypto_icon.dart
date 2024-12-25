import 'package:flutter/material.dart';
import 'package:tradingview_app/core/extension/context_extension.dart';
import 'package:tradingview_app/view/home/service/icon-service/get_icon_from_network.dart';

class CryptoIcon extends StatelessWidget {
  const CryptoIcon({super.key, required this.url});
  final String url;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: context.iconMediumHeight,
      width: context.iconMediumHeight,
      child: ClipOval(
        child: Image.network(
          IconNetwork().getIconToNetwork(url),
          fit: BoxFit.cover,
        ),
      ),
    );
  }

}
