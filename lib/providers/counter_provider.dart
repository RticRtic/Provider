import 'package:flutter/material.dart';

class Counter with ChangeNotifier {
  int counter = 0;
  int get count => counter;

  void increment() {
    counter++;
    notifyListeners();
  }

  void decrement() {
    counter--;
    notifyListeners();
  }

  void reset() {
    counter = 0;
    notifyListeners();
  }
}
