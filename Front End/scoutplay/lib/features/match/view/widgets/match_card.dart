import 'package:flutter/material.dart';
import 'package:scoutplay/features/match/view/widgets/match_card_clipper.dart';

class MatchCard extends StatelessWidget {
  const MatchCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 32.0),
      child: ClipPath(
        clipper: CardClipper(),
        child: Container(
          width: double.infinity,
          height: 200,
          color: Colors.amber,
        ),
      ),
    );
  }
}
