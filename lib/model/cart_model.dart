import 'package:flutter/material.dart';

class CartModel extends ChangeNotifier {
  final List _shopitems = [
    ["Avocado", "4.00", "lib/images/avocado.png", Colors.green],
    ["Banana","2.50","lib/images/banana.png", Colors.yellow],
    ["Chicken","12.00","lib/images/chicken.png",Colors.brown],
    ["Water","1.00","lib/images/water.png",Colors.blue]
  ];

  final List _cartItems = [];
  get shopitems => _shopitems;
  get cartItems => _cartItems;

  void addItemToCart(int indexx){
    _cartItems.add(_shopitems[indexx]);
    notifyListeners();
  }

  void removeItemFromCart(int indexx){
    _cartItems.removeAt(indexx);
    notifyListeners();
  }

  String calculateTotal(){
    double totalPrice =0;
    for (int i=0; i<_cartItems.length;i++){
      totalPrice += double.parse(_cartItems[i][1]);
    }
    return totalPrice.toStringAsFixed(2);
  }

}