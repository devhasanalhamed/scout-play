import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final bool centerTitle;
  final Color? backgroundColor;
  final Color? foregroundColor;
  final ShapeBorder? shape;
  final bool automaticallyImplyLeading;
  const CustomAppBar({
    super.key,
    required this.title,
    this.centerTitle = true,
    this.backgroundColor,
    this.foregroundColor,
    this.shape,
    this.automaticallyImplyLeading = true,
  });

  // Not Used
  // shape

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(title),
      centerTitle: centerTitle,
      backgroundColor: backgroundColor ?? Colors.white10,
      foregroundColor: foregroundColor ?? Colors.white,
      actions: [IconButton(onPressed: () {}, icon: Icon(Icons.search))],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
