class HeroConstants {
  static HeroConstants? _instance;
  static HeroConstants get instance => _instance ??= HeroConstants._init();

  HeroConstants._init();

  String get profileImageAvatar => 'profile_image_avatar';
  String get giftQrCode => 'gift_qr_code';
}
