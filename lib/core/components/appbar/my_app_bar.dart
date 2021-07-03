import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget implements PreferredSize {
  final Widget? title;
  final List<Widget>? actions;
  final PreferredSizeWidget? bottom;
  final Widget? leading;

  const MyAppBar({
    Key? key,
    this.title,
    this.actions,
    this.bottom,
    this.leading,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: title,
      actions: actions,
      leading: leading,
      bottom: bottom,
    );
  }

  @override
  Widget get child => this;

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
