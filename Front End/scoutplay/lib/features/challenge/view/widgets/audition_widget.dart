import 'package:flutter/material.dart';
import 'package:scoutplay/core/constants/app_images.dart';
import 'package:scoutplay/features/challenge/view/widgets/club_widget.dart';

class AuditionWidget extends StatelessWidget {
  const AuditionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 140,
      color: Colors.white38,
      child: ListView(
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.only(right: 16.0),
        children: [
          ClubWidget(name: 'Al-Ittihad', image: AppImages.clubittihad),
          ClubWidget(name: 'Al-Nassr', image: AppImages.clubnassr),
          ClubWidget(name: 'Al-Fateh', image: AppImages.clubfateh),
          ClubWidget(name: 'Al-Ahli', image: AppImages.clubAhli),
          ClubWidget(name: 'Al-Taawoun', image: AppImages.clubtaawoun),
          ClubWidget(name: 'Al-Hilal', image: AppImages.clubhilal),
          ClubWidget(name: 'Al-Wehda', image: AppImages.clubwehda),
          ClubWidget(name: 'Al-Riyadh', image: AppImages.clubriyadh),
        ],
      ),
    );
  }
}
