import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';

class SelectionProvider with ChangeNotifier {
  String _selectedOption = " ";
  String get selectedOption => _selectedOption;

  void setSelectedOption(String value) {
    _selectedOption = value;
    notifyListeners();
  }
}
