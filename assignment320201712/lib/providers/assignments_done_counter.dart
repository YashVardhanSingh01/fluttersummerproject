import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AssignmentCounter extends ChangeNotifier {
  int _assignmentCounter = 0;
  double _percentage = 0;
  int _score = 0;

  int get assignmentCounter => _assignmentCounter;
  double get percentage => _percentage;
  int get score => _score;

  void assignmentsDone(int score) {
    _assignmentCounter++;
    _percentage = (_assignmentCounter / 6) * 100;
    _score = _score + score;
    notifyListeners();
  }
}
