import '../../extensions/string_extension.dart';
import 'package:flutter/material.dart';

class LocaleText extends StatelessWidget {
  final String value;
  final TextStyle? style;
  const LocaleText(
    this.value, {
    Key? key,
    this.style,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      value.locale,
      style: style,
    );
  }
}
