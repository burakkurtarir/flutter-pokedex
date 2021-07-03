import 'package:easy_localization/easy_localization.dart';

extension StringExtension on String {
  String get locale => this.tr();
}

extension AssetExtension on String {
  String get gif => 'assets/gifs/${this}.gif';
  String get svg => 'assets/images/${this}.svg';
  String get png => 'assets/images/${this}.png';
}
