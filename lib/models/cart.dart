import 'package:flutter/material.dart';

import 'shoe.dart';

class Cart extends ChangeNotifier {
  List<Shoe> shoeShop = [
    Shoe(
        name: 'Air Jordan 1',
        price: '180',
        imagePath: 'lib/images/airj1.jpg',
        description: 'It is not just a shoe..it is a culture'),
    Shoe(
        name: 'Nike Zoom',
        price: '90',
        imagePath: 'lib/images/zom.jpg',
        description: 'Precision and speed redefined with Nike Zoom technology'),
    Shoe(
        name: 'Air Max',
        price: '250',
        imagePath: 'lib/images/zom.jpg',
        description: 'Revolutionary comfort and style'),
    Shoe(
        name: 'Nike TN',
        price: '300',
        imagePath: 'lib/images/TN.jpg',
        description: 'A classic that pushed the limits of design and comfort'),
  ];

  List<Shoe> userCart = [];

  List<Shoe> getShoeList() {
    return shoeShop;
  }

  List<Shoe> getUserCart() {
    return userCart;
  }

  void addItemToCart(Shoe shoe) {
    userCart.add(shoe);
    notifyListeners();
  }

  void removeItemFromCart(Shoe shoe) {
    userCart.remove(shoe);
    notifyListeners();
  }
}
