import 'package:flutter/material.dart';
import 'package:scoutplay/core/constants/app_images.dart';
import 'package:scoutplay/features/match/view/widgets/match_card.dart';
import 'package:scoutplay/features/match/view/widgets/match_card_clipper.dart';

class MatchWidget extends StatelessWidget {
  const MatchWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(AppImages.background),
          fit: BoxFit.fitHeight,
        ),
      ),
      child: ListView(
        padding: EdgeInsets.only(
          left: 16.0,
          top: kToolbarHeight + 48.0,
          right: 16.0,
        ),
        children: [
          MatchCard(),
          MatchCard(),
          MatchCard(),
          MatchCard(),
          MatchCard(),
          MatchCard(),
        ],
      ),
    );
  }
}
