import 'package:flutter/material.dart';

class SetNameOrID extends ChangeNotifier {
  int _radvalue = 1;
  int get radvalue => _radvalue;

  void radValue(int option) {
    _radvalue = option;
    notifyListeners();
  }
}
