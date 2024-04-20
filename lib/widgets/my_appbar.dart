import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final Color backGroundColor;
  const MyAppBar({Key? key, required this.title, required this.backGroundColor})
      : super(key: key);
  @override
  Size get preferredSize => const Size.fromHeight(60);
  @override
  Widget build(BuildContext context) {
    return AppBar(
      foregroundColor: Colors.black,
      elevation: 0,
      title: Text(title),
      backgroundColor: backGroundColor,
    );
  }
}
