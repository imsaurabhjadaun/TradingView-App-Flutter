import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tradingview_app/view/home/service/crypto/icrypto_data_source.dart';
import 'package:tradingview_app/view/home/view-model/cubit/crypto_state.dart';

class CryptoCubit extends Cubit<CryptoState> {
  CryptoCubit({required this.cryptoDataSource}) : super(CryptoInitial());
  final ICryptoDataSource cryptoDataSource;

  Future<void> ranking() async {
    try {
      emit(CryptoLoading());
      final response = await cryptoDataSource.fetchData();
      emit(CryptoCompleted(response));
    } catch (e) {
      emit(CryptoError());
    }
  }
}
