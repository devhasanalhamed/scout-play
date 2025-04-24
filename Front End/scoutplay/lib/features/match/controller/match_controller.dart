import 'package:scoutplay/features/match/model/match_model.dart';

class MatchController {
  final matchList = [
    MatchModel(
      title: 'Let\'s play together today',
      time: 90,
      players: 11,
      date: DateTime.now(),
      city: 'Riyadh',
      distract: 'Naseem',
      description:
          'Join us for a spontaneous game filled with fun and team spirit!',
    ),
    MatchModel(
      title: 'Midnight Madness Match',
      time: 60,
      players: 7,
      date: DateTime.now().add(Duration(days: 1, hours: 3)),
      city: 'Jeddah',
      distract: 'Al Andalus',
      description: 'A thrilling night match under the stars – don’t miss it!',
    ),
    MatchModel(
      title: 'Sunset Showdown',
      time: 75,
      players: 9,
      date: DateTime.now().add(Duration(days: 2)),
      city: 'Dammam',
      distract: 'Al Faisaliyah',
      description: 'End your day with an epic sunset game full of energy!',
    ),
    MatchModel(
      title: 'Friday Footy Fiesta',
      time: 90,
      players: 14,
      date: DateTime.now().add(Duration(days: 5)),
      city: 'Riyadh',
      distract: 'Olaya',
      description: 'Kick off your weekend with a big Friday football bash!',
    ),
    MatchModel(
      title: 'Weekend Warriors Clash',
      time: 105,
      players: 10,
      date: DateTime.now().add(Duration(days: 6)),
      city: 'Khobar',
      distract: 'Al Aqrabiyah',
      description:
          'Challenge yourself in this intense weekend warrior showdown!',
    ),
    MatchModel(
      title: 'Casual Kick-off',
      time: 45,
      players: 6,
      date: DateTime.now().add(Duration(days: 3)),
      city: 'Mecca',
      distract: 'Al Aziziyah',
      description:
          'A chill, friendly game – perfect for beginners and casuals.',
    ),
    MatchModel(
      title: 'Legends Return!',
      time: 120,
      players: 11,
      date: DateTime.now().add(Duration(days: 4, hours: 2)),
      city: 'Madinah',
      distract: 'Quba',
      description:
          'Watch the legends return in a high-energy, full-length match!',
    ),
    MatchModel(
      title: 'Under the Lights',
      time: 90,
      players: 8,
      date: DateTime.now().add(Duration(hours: 6)),
      city: 'Riyadh',
      distract: 'Al Malaz',
      description:
          'Experience the magic of football under the bright night lights.',
    ),
    MatchModel(
      title: 'Early Birds Game',
      time: 60,
      players: 5,
      date: DateTime.now().add(Duration(days: 1, hours: -4)),
      city: 'Tabuk',
      distract: 'Al Rawabi',
      description:
          'Rise and shine for this early morning match – fresh and fun!',
    ),
    MatchModel(
      title: 'Street Soccer Vibes',
      time: 70,
      players: 7,
      date: DateTime.now().add(Duration(days: 7)),
      city: 'Abha',
      distract: 'Al Mahalah',
      description:
          'Bring your street skills to the pitch and show what you got!',
    ),
  ];
}
