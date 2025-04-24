import 'package:flutter/material.dart';

class AuthAppBar extends StatelessWidget {
  final String title;
  const AuthAppBar({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    final appBarHeight =
        kToolbarHeight + MediaQuery.of(context).padding.top + 48;
    return Container(
      width: double.infinity,
      height: appBarHeight,
      padding: EdgeInsets.only(bottom: 32.0),
      color: Theme.of(context).colorScheme.primary,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: 24.0,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
