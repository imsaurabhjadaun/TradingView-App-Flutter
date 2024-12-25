import 'package:dio/dio.dart';
import 'package:tradingview_app/view/_product/service/api_constants.dart';
import 'package:tradingview_app/view/home/model/crypto.dart';
import 'package:tradingview_app/view/home/service/crypto/icrypto_data_source.dart';

class CryptoDataSourceWithDio extends ICryptoDataSource {
  CryptoDataSourceWithDio({required this.dio}) {
    url = ApiConstants.url;
    header = ApiConstants.header;
  }

  late String url;
  late Map<String, String> header;
  final Dio dio;

  @override
  Future<List<Crypto>> fetchData() async {
    final response = await dio.get<Map<String, dynamic>>(url, options: Options(headers: header));
    final json = response.data?['data'] as List;
    return json.map((e) => Crypto.fromJson(e as Map<String, dynamic>)).toList();
  }
}
