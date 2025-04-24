import 'package:flutter/material.dart';
import 'package:scoutplay/core/constants/app_images.dart';
import 'package:scoutplay/features/match/controller/match_controller.dart';
import 'package:scoutplay/features/match/view/widgets/match_card.dart';

class MatchScreen extends StatelessWidget {
  const MatchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final match = MatchController();
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(AppImages.background),
          fit: BoxFit.cover,
        ),
      ),
      child: ListView.builder(
        padding: EdgeInsets.only(
          left: 16.0,
          top: MediaQuery.of(context).padding.top,
          right: 16.0,
          bottom: 48.0,
        ),
        itemCount: match.matchList.length,
        itemBuilder:
            (context, index) => MatchCard(match: match.matchList[index]),
      ),
    );
  }
}
