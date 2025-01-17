import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class IntroProvider with ChangeNotifier {
  int _currentIndex =0;
  int get currentIndex => _currentIndex;
  void setIndex(int index) {
    _currentIndex = index;
    notifyListeners();

  }



}