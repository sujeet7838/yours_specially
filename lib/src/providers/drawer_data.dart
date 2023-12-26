import 'package:flutter/material.dart';

class DrawerData with ChangeNotifier {
  var _selectedDestination = 0;

  int get selectedDestination {
    return _selectedDestination;
  }

  void selectDestination(int index) {
    _selectedDestination = index;
    notifyListeners();
  }
}
