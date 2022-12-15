import 'package:flutter/material.dart';

class ShoppingCart with ChangeNotifier {
  List<String> shoppingCart = ["Apple", "Orange", "Grapes"];

  int get count => shoppingCart.length;
  List<String> get cart => shoppingCart;

  void addItem(String item) {
    shoppingCart.add(item);
    notifyListeners();
  }

  void removeBread() {
    shoppingCart.remove("bread");
    notifyListeners();
  }
}
