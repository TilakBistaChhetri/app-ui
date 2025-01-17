import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class BottomnavigationProvider with ChangeNotifier{
  List<String> imageList = [
    "assets/home.png",
    "assets/heart.png",
    "assets/search.png",
    "assets/profile.png",
    "assets/package.png",
  ];
  List <String> textList = [ "Home", "Favourite", "Search", "Pofile", "Package"];
   int _currentIndex =0;
  int get currentIndex => _currentIndex;
  void setchangesIndex(int index) {
    print("abc");
    _currentIndex = index;
    notifyListeners();
  }


}