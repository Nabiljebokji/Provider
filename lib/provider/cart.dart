import 'package:flutter/material.dart';
import 'package:provider1/model/item.dart';

class cart extends ChangeNotifier {
  List<Item> items = [];

  double price = 0.0;

  void add(Item item) {
    items.add(item);
    price = price + item.price;
    notifyListeners();
  }

  void Delete(Item item) {
    items.remove(item);
    price = price - item.price;
    notifyListeners();
  }

  int get count {
    return items.length;
  }

  double get totalPrice {
    return price;
  }

  List<Item> get CheckOutCartList {
    return items;
  }
}
