import 'package:flutter/cupertino.dart';

class HomeController extends ChangeNotifier {
  int _index = 0;

  int get index => _index;

  void updateIndex(int index) {
    _index = index;
    notifyListeners();
  }
}
