import 'package:flutter/material.dart';

class ShortController extends ChangeNotifier {
  final _videos = [
    'assets/videos/1.mp4',
    'assets/videos/2.mp4',
    'assets/videos/3.mp4',
    'assets/videos/4.mp4',
    'assets/videos/5.mp4',
    'assets/videos/6.mp4',
    'assets/videos/7.mp4',
    'assets/videos/8.mp4',
    'assets/videos/9.mp4',
    'assets/videos/10.mp4',
  ];

  List<String> get videos => _videos;
}
