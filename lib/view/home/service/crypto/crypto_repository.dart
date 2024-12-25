import 'package:tradingview_app/view/home/model/crypto.dart';
import 'package:tradingview_app/view/home/service/crypto/icrypto_data_source.dart';

class CryptoRepository {
  CryptoRepository(this.cryptoDataSource);
  final ICryptoDataSource cryptoDataSource;

  Future<List<Crypto>> getProducts() {
    return cryptoDataSource.fetchData();
  }
}
