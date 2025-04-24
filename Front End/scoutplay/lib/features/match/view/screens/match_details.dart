import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:intl/intl.dart';
import 'package:scoutplay/core/common/appbars/custom_app_bar.dart';
import 'package:scoutplay/core/common/buttons/custom_elevated_button.dart';
import 'package:scoutplay/core/common/texts/font_size_factor.dart';
import 'package:scoutplay/core/common/texts/scaled_text.dart';
import 'package:scoutplay/core/constants/app_images.dart';
import 'package:scoutplay/features/match/model/match_model.dart';
import 'package:scoutplay/features/match/view/widgets/map_frame.dart';

class MatchDetails extends StatelessWidget {
  final MatchModel match;
  const MatchDetails({super.key, required this.match});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: 'Details',
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
      ),
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          ListView(
            children: [
              Container(
                width: double.infinity,
                height: 260,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(AppImages.pitchSix),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 16.0, left: 16.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ScaledText(
                        text: match.title,
                        fontSizeFactor: FontSizeFactor.large,
                        color: Colors.white,
                      ),
                      const SizedBox(height: 4.0),
                      Row(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(color: Colors.white),
                            ),
                            child: CircleAvatar(
                              foregroundImage: AssetImage(AppImages.profileOne),
                            ),
                          ),
                          const SizedBox(width: 4.0),
                          Text(
                            'Hossam Al-yami',
                            style: TextStyle(
                              fontSize: 16.0,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Text(match.description, style: TextStyle(fontSize: 24.0)),
                    const SizedBox(height: 4.0),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.calendar_month_outlined,
                          size: 18.0,
                          color: Theme.of(context).colorScheme.primary,
                        ),
                        const SizedBox(width: 4.0),
                        Text(
                          DateFormat('dd:MM:y H:m').format(match.date),
                          style: TextStyle(
                            fontSize: 16.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 4.0),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.timer_outlined,
                          size: 18.0,
                          color: Theme.of(context).colorScheme.primary,
                        ),
                        const SizedBox(width: 4.0),
                        Text(
                          '${match.time} minutes',
                          style: TextStyle(
                            fontSize: 16.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(width: 16.0),
                        Icon(
                          Icons.groups,
                          size: 18.0,
                          color: Theme.of(context).colorScheme.primary,
                        ),
                        const SizedBox(width: 4.0),
                        Text(
                          '${match.players} vs ${match.players}',
                          style: TextStyle(
                            fontSize: 16.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 4.0),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.handshake_outlined,
                          size: 18.0,
                          color: Theme.of(context).colorScheme.primary,
                        ),
                        const SizedBox(width: 4.0),
                        Text(
                          'Friendly',
                          style: TextStyle(
                            fontSize: 16.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 4.0),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.credit_card_outlined,
                          size: 18.0,
                          color: Theme.of(context).colorScheme.primary,
                        ),
                        const SizedBox(width: 4.0),
                        Text(
                          '25',
                          style: TextStyle(
                            fontSize: 16.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SvgPicture.asset(
                          AppImages.saudiRiyalSymbol,
                          width: 16.0,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              OnlineMapFrame(),
            ],
          ),
          CustomElevatedButton(
            text: 'Join',
            onPressed: () {},
            borderRadius: 0.0,
          ),
        ],
      ),
    );
  }
}
