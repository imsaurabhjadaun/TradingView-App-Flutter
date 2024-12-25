abstract class ProjectKeys {
  static const appName = 'TradingView';
  static const globalAverage = 'Global average';
  static const trend = 'Trend';
  static const technicals = 'Technicals';
  static const transaction = 'Transaction';
  static const eur = 'EUR';
  static const usd = 'USD';
  static const twentyFourHourHighEuro = '24H High (EUR)';
  static const twentyFourHourLowEuro = '24H Low (EUR)';
  static const twentyFourVol = '24H Vol';
  static const cap = 'Cap (EUR)';
  static String circulation(String coinName) {
    return 'Circulation ($coinName)';
  }

  static const error = 'Error';
  static const notFound = 'Not Found';
}
