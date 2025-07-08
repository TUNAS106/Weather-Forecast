
const linkAsset = 'assets/images/weathers/';
class AssetCustom {
  static String getLinkImg(String name) => '$linkAsset${name.replaceAll(' ', '').toLowerCase()}.png';
}
class Mykey{
  static String api_key = '7d7013d2b17549cc05312d6d4bb9bddc';
}