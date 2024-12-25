abstract class IIconNetwork {
  String getIconToNetwork(String id);
}

class IconNetwork implements IIconNetwork {
  @override
  String getIconToNetwork(String id) {
    return 'https://s2.coinmarketcap.com/static/img/coins/64x64/$id.png';
  }
}
