import 'package:flutter/material.dart';

class MyTextFormField extends StatelessWidget {
  final bool obscureText;
  final InputDecoration? decoration;
  final TextStyle? style;
  final FormFieldValidator<String>? validator;
  final TextEditingController? controller;
  const MyTextFormField({
    Key? key,
    this.obscureText = false,
    this.decoration = const InputDecoration(),
    this.style,
    this.validator,
    this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: obscureText,
      decoration: decoration,
      style: style,
      validator: validator,
      controller: controller,
    );
  }
}
