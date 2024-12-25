class Crypto {
  Crypto({this.id, this.name, this.symbol, this.slug, this.quote});
  Crypto.fromJson(Map<String, dynamic> json) {
    id = json['id'] as int;
    name = json['name'].toString();
    symbol = json['symbol'].toString();
    slug = json['slug'].toString();
    quote = json['quote'] != null ? Quote.fromJson(json['quote'] as Map<String, dynamic>) : null;
  }
  int? id;
  String? name;
  String? symbol;
  String? slug;
  Quote? quote;

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['symbol'] = symbol;
    data['slug'] = slug;
    if (quote != null) {
      data['quote'] = quote!.toJson();
    }
    return data;
  }
}

class Quote {
  Quote({this.uSD});
  Quote.fromJson(Map<String, dynamic> json) {
    uSD = json['USD'] != null ? USD.fromJson(json['USD'] as Map<String, dynamic>) : null;
  }
  USD? uSD;

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    if (uSD != null) {
      data['USD'] = uSD!.toJson();
    }
    return data;
  }
}

class USD {
  USD({
    this.price,
    this.volume24h,
    this.volumeChange24h,
    this.percentChange1h,
    this.percentChange24h,
    this.percentChange7d,
    this.percentChange30d,
    this.percentChange60d,
    this.percentChange90d,
    this.marketCap,
    this.marketCapDominance,
    this.fullyDilutedMarketCap,
  });
  USD.fromJson(Map<String, dynamic> json) {
    price = json['price'] as num;
    volume24h = json['volume_24h'] as num;
    volumeChange24h = json['volume_24h'] as num;
    percentChange1h = json['percent_change_1h'] as num;
    percentChange24h = json['percent_change_24h'] as num;
    percentChange7d = json['percent_change_7d'] as num;
    percentChange30d = json['percent_change_30d'] as num;
    percentChange60d = json['percent_change_60d'] as num;
    percentChange90d = json['percent_change_90d'] as num;
    marketCap = json['market_cap'] as num;
    marketCapDominance = json['market_cap_dominance'] as num;
    fullyDilutedMarketCap = json['fully_diluted_market_cap'] as num;
  }
  num? price;
  num? volume24h;
  num? volumeChange24h;
  num? percentChange1h;
  num? percentChange24h;
  num? percentChange7d;
  num? percentChange30d;
  num? percentChange60d;
  num? percentChange90d;
  num? marketCap;
  num? marketCapDominance;
  num? fullyDilutedMarketCap;

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['price'] = price;
    data['volume_24h'] = volume24h;
    data['volume_change_24h'] = volumeChange24h;
    data['percent_change_1h'] = percentChange1h;
    data['percent_change_24h'] = percentChange24h;
    data['percent_change_7d'] = percentChange7d;
    data['percent_change_30d'] = percentChange30d;
    data['percent_change_60d'] = percentChange60d;
    data['percent_change_90d'] = percentChange90d;
    data['market_cap'] = marketCap;
    data['market_cap_dominance'] = marketCapDominance;
    data['fully_diluted_market_cap'] = fullyDilutedMarketCap;
    return data;
  }
}
