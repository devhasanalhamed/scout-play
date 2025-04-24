import 'package:flutter/material.dart';
import 'package:scoutplay/core/constants/app_images.dart';
import 'package:scoutplay/features/challenge/view/widgets/practice_card_widget.dart';

class PracticeWidget extends StatelessWidget {
  const PracticeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      padding: EdgeInsets.all(16.0),
      children: [
        PracticeCardWidget(title: 'Cut Off', image: AppImages.practiceCutOff),
        PracticeCardWidget(title: 'Basics', image: AppImages.practiceBasics),
        PracticeCardWidget(
          title: 'Cross Danger Zone',
          image: AppImages.practiceCrossIntoTheDangerZone,
        ),
        PracticeCardWidget(
          title: 'Dribble Challenge',
          image: AppImages.practiceDribbleChallenge,
        ),
        PracticeCardWidget(
          title: 'Obstructed Pass',
          image: AppImages.practiceObstructedPass,
        ),
        PracticeCardWidget(title: 'Octopus', image: AppImages.practiceOctopus),
        PracticeCardWidget(
          title: '1 vs 1',
          image: AppImages.practiceOneVersusOne,
        ),
        PracticeCardWidget(
          title: 'Quick Fire',
          image: AppImages.practiceQuickFire,
        ),
        PracticeCardWidget(
          title: 'Twenty Meters',
          image: AppImages.practiceTwentyMeters,
        ),
      ],
    );
  }
}
