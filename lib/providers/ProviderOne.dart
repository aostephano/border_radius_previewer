import 'package:flutter/material.dart';

class ProviderOne extends ChangeNotifier {
  double allBorderValue = 0;

  void changeAllBorderValue(double value) {
    allBorderValue = value;
    notifyListeners();
  }
}
