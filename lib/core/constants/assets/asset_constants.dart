import '../../extensions/string_extension.dart';

class AssetConstants {
  static AssetConstants? _instance;
  static AssetConstants get instance => _instance ??= AssetConstants._init();

  AssetConstants._init();

  String get superheroLoading => 'superhero_loading'.gif;
  String get logo => 'spinigo-logo'.png;
  String get loginBackground => 'login-background'.png;
  String get facebookLogo => 'facebook-logo'.png;
  String get googleLogo => 'google-logo'.png;
  String get registerBackground => 'register-background'.png;
  String get spinigoWheel => 'spinigo-wheel'.png;
  String get royalCrown => 'royal-crown-icon'.png;
  String get restaurantTestImage => 'restaurant-test-image'.png;
  String get foodTestImage => 'food-test-image'.png;
  String get qrCodeTestImage => 'qr-code-test-image'.png;
}
