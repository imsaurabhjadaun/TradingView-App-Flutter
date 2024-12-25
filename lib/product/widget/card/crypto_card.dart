import 'package:flutter/material.dart';
import 'package:tradingview_app/core/component/icon/crypto_icon.dart';
import 'package:tradingview_app/core/component/text/body_large_text.dart';
import 'package:tradingview_app/product/routing/routing_with_core.dart';
import 'package:tradingview_app/view/home/model/crypto.dart';

class CryptoCard extends StatelessWidget {
  const CryptoCard({
    required this.crypto,
    super.key,
  });

  final Crypto crypto;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.black12,
      child: InkWell(
        onTap: () {
          Navigator.push(
            context,
            RoutingWithCore.goTradingPage(crypto),
          );
        },
        child: ListTile(
          leading: CryptoIcon(url: crypto.id.toString()),
          title: BodyLargeText(text: crypto.name.toString()),
          trailing: BodyLargeText(text: '${crypto.quote!.uSD!.price!.toStringAsFixed(2)} \$'),
        ),
      ),
    );
  }
}
