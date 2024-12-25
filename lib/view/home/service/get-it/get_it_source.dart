import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:tradingview_app/view/home/service/crypto/crypto_data_soure_with_dio.dart';

class GetItSource {
  factory GetItSource() {
    return _singleton;
  }

  GetItSource._internal();
  static final GetItSource _singleton = GetItSource._internal();

  static final getIt = GetIt.instance;
  static final dio = Dio();

  static void setup() {
    getIt.registerSingleton<CryptoDataSourceWithDio>(CryptoDataSourceWithDio(dio: dio));
  }
}
