import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:scoutplay/core/common/texts/font_size_factor.dart';
import 'package:scoutplay/core/common/texts/scaled_text.dart';
import 'package:scoutplay/core/constants/app_images.dart';
import 'package:scoutplay/core/routes/app_routes.dart';
import 'package:scoutplay/features/match/model/match_model.dart';
import 'package:scoutplay/features/match/view/screens/match_details.dart';
import 'package:scoutplay/features/match/view/widgets/match_card_chip.dart';
import 'package:scoutplay/features/match/view/widgets/match_card_clipper.dart';

class MatchCard extends StatelessWidget {
  final MatchModel match;
  const MatchCard({super.key, required this.match});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 32.0),
      child: GestureDetector(
        onTap: () => AppRoutes.push(context, MatchDetails(match: match)),
        child: Stack(
          alignment: Alignment.topCenter,
          children: [
            ClipPath(
              clipper: CardClipper(),
              child: Container(
                width: double.infinity,
                height: 160,

                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(AppImages.pitchSix),
                    fit: BoxFit.cover,
                  ),
                  border: Border.all(color: Colors.white, width: 1),
                ),
                child: Stack(
                  fit: StackFit.expand,
                  children: [
                    Container(decoration: BoxDecoration()),
                    Padding(
                      padding: EdgeInsets.all(24.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                spacing: 16.0,
                                children: [
                                  Container(
                                    padding: EdgeInsets.all(4.0),
                                    decoration: BoxDecoration(
                                      color: Colors.black38,
                                      borderRadius: BorderRadius.circular(25.0),
                                    ),
                                    child: Row(
                                      children: [
                                        Icon(
                                          Icons.timelapse,
                                          color: Colors.white,
                                          size: 16.0,
                                        ),
                                        const SizedBox(width: 4.0),
                                        ScaledText(
                                          text: '${match.time} min',
                                          color: Colors.white,
                                          fontSizeFactor: FontSizeFactor.small,
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    padding: EdgeInsets.all(4.0),
                                    decoration: BoxDecoration(
                                      color: Colors.black38,
                                      borderRadius: BorderRadius.circular(25.0),
                                    ),
                                    child: Row(
                                      children: [
                                        Icon(
                                          Icons.diversity_3_outlined,
                                          color: Colors.white,
                                          size: 16.0,
                                        ),
                                        const SizedBox(width: 4.0),
                                        ScaledText(
                                          text: '${match.players} players',
                                          color: Colors.white,
                                          fontSizeFactor: FontSizeFactor.small,
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              ScaledText(
                                text: match.title,
                                fontSizeFactor: FontSizeFactor.medium,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ],
                          ),

                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              MatchCardChip(
                                title: 'Start',
                                label: DateFormat(
                                  'dd:MM - H:m',
                                ).format(match.date),
                              ),
                              MatchCardChip(title: 'City', label: match.city),
                              MatchCardChip(
                                title: 'District',
                                label: match.distract,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            ScaledText(
              text: 'Friendly',
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ],
        ),
      ),
    );
  }
}
