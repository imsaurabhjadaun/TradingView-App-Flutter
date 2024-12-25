import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tradingview_app/core/enum/base_status.dart';
import 'package:tradingview_app/product/init/locale/project_keys.dart';
import 'package:tradingview_app/product/widget/card/crypto_card.dart';
import 'package:tradingview_app/view/home/model/crypto.dart';
import 'package:tradingview_app/view/home/view-model/cubit/crypto_cubit.dart';
import 'package:tradingview_app/view/home/view-model/cubit/crypto_state.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          ProjectKeys.appName,
        ),
      ),
      body: BlocBuilder<CryptoCubit, CryptoState>(
        builder: (context, state) {
          switch (state.status) {
            case BaseStatus.initial:
              return const SizedBox.shrink();
            case BaseStatus.loading:
              return const Center(child: CircularProgressIndicator());
            case BaseStatus.completed:
              return CryptoList(data: state as CryptoCompleted);
            case BaseStatus.error:
              return const Center(child: Text(ProjectKeys.error));
          }
        },
      ),
    );
  }
}

class CryptoList extends StatelessWidget {
  const CryptoList({
    required this.data,
    super.key,
  });

  final CryptoCompleted data;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: data.response.length,
      itemBuilder: (BuildContext context, int index) {
        return CryptoCard(crypto: data.response[index] as Crypto);
      },
    );
  }
}
