import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:scoutplay/core/common/appbars/custom_app_bar.dart';
import 'package:scoutplay/features/home/logic/home_controller.dart';
import 'package:scoutplay/features/home/view/widgets/custom_bottom_navigation.dart';
import 'package:scoutplay/features/match/view/screens/match_screen.dart';
import 'package:scoutplay/features/challenge/view/screens/challenge_widget.dart';
import 'package:scoutplay/features/profile/view/screens/profile_screen.dart';
import 'package:scoutplay/features/short/view/widgets/short_widget.dart';

class HomeScreen extends StatelessWidget {
  static const String routeName = '/home_screen';
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final appBars = <PreferredSizeWidget>[
      CustomAppBar(title: 'Shorts'),
      CustomAppBar(title: 'Team Up'),
      CustomAppBar(title: 'Find Your Way'),
      CustomAppBar(title: 'Player Card'),
    ];

    final pages = <Widget>[
      ShortWidget(),
      MatchScreen(),
      ChallengeScreen(),
      ProfileScreen(),
    ];

    final index = context.watch<HomeController>().index;
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: Colors.transparent,
      appBar: appBars[index],
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [pages[index], CustomBottomNavigation()],
      ),
    );
  }
}
