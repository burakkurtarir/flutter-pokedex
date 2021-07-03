import 'package:flutter/material.dart';

class MyAssetImage extends StatelessWidget {
  final String name;
  final double? width;
  final double? height;
  final Color? color;

  const MyAssetImage(
    this.name, {
    Key? key,
    this.width,
    this.height,
    this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      name,
      width: width,
      height: height,
      color: color,
    );
  }
}
