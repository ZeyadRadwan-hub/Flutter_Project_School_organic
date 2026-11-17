import 'package:flutter/material.dart';

class ShoppingObject {
  String name;
  double price;
  IconData icon;
  int quantity;

  ShoppingObject({
    required this.name,
    required this.price,
    required this.icon,
    this.quantity = 1,
  });
}

class ShoppingcardsProvider extends ChangeNotifier {

  List<ShoppingObject> cartItems = [];

  void addToCart(String name, double price, IconData icon) {
    int foundIndex = -1;
    for (int i = 0; i < cartItems.length; i++) {
      if (cartItems[i].name == name) {
        foundIndex = i;
        break;
      }
    }

    if (foundIndex != -1) {
      cartItems[foundIndex].quantity++;
    } else {
      cartItems.add(
        ShoppingObject(
          name: name,
          price: price,
          icon: icon,
          quantity: 1,
        ),
      );
    }
    notifyListeners();
  }

  void increment(int index) {
    cartItems[index].quantity++;
    notifyListeners();
  }

  void decrement(int index) {
    cartItems[index].quantity--;

    if (cartItems[index].quantity == 0) {
      cartItems.removeAt(index);
    }
    notifyListeners();
  }

  double calculateTotal() {
    double total = 0;
    for (int i = 0; i < cartItems.length; i++) {
      total = total + (cartItems[i].price * cartItems[i].quantity);
    }
    return total;
  }
}