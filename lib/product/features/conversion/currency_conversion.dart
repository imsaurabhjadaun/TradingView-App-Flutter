class CurrencyConversion {
  String convertUsdToEuro(num usdValue) {
    final eurResult = usdValue * 1.09;
    return eurResult.toStringAsFixed(2);
  }
}
