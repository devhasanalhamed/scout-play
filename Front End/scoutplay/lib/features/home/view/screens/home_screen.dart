import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:scoutplay/features/home/logic/home_controller.dart';
import 'package:scoutplay/features/home/view/widgets/custom_bottom_navigation.dart';
import 'package:scoutplay/features/match/view/widgets/match_widget.dart';
import 'package:scoutplay/features/package/view/widgets/package_widget.dart';
import 'package:scoutplay/features/profile/view/widgets/profile_widget.dart';
import 'package:scoutplay/features/short/view/widgets/short_widget.dart';

class HomeScreen extends StatelessWidget {
  static const String routeName = '/home_screen';
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final pages = <Widget>[
      MatchWidget(),
      ShortWidget(),
      PackageWidget(),
      ProfileWidget(),
    ];

    final index = context.watch<HomeController>().index;
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: Colors.transparent,
      body: Stack(alignment: Alignment.bottomCenter, children: [pages[index]]),
    );
  }
}
