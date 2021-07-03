import 'package:flutter/material.dart';
import 'my_text_button.dart';

class DialogButton extends StatelessWidget {
  final String text;
  final TextStyle? style;
  final Color? borderColor;
  final EdgeInsetsGeometry? padding;

  const DialogButton({
    Key? key,
    required this.text,
    this.style,
    this.borderColor,
    this.padding,
  }) : super(key: key);

  static const EdgeInsetsGeometry defaultPadding = EdgeInsets.symmetric(
    horizontal: 24,
    vertical: 12,
  );

  @override
  Widget build(BuildContext context) {
    return MyTextButton(
      onPressed: () {},
      style: TextButton.styleFrom(
        padding: padding ?? defaultPadding,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
          side: BorderSide(
            color: borderColor!,
            width: 2,
          ),
        ),
      ),
      child: Text(text, style: style),
    );
  }
}
