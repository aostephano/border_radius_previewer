import 'package:flutter/material.dart';

class ProviderOne extends ChangeNotifier {
  Map<String, double> borderValues = {
    'topLeftBorderValue': 0,
    'topRightBorderValue': 0,
    'bottonLeftBorderValue': 0,
    'bottonRightBorderValue': 0,
  };

  changeBorderValue(key, newValue) {
    borderValues.update(key, (value) => newValue);
    // debugPrint(borderValues.toString());
    notifyListeners();
  }
}
