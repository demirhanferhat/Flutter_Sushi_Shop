import 'package:flutter/material.dart';
import 'package:sushishop/models/foods.dart';

class Shop extends ChangeNotifier {
  final List<Food> _foodMenu = [
    Food(
        name: "Salmon Sushi",
        price: "21.00",
        imagePath: "lib/images/sushi5.png",
        rating: "4.9"),
    Food(
        name: "Tuna Sushi",
        price: "23.00",
        imagePath: "lib/images/sushi6.png",
        rating: "4.7")
  ];

  //customer cart
  final List<Food> _cart = [];

  //getter methos
  List<Food> get foodMenu => _foodMenu;
  List<Food> get cart => _cart;

  //add to cart
  void addToCart(Food foodItem, int quantity) {
    for (int i = 0; i < quantity; i++) {
      _cart.add(foodItem);
    }
    notifyListeners();
  }

  //remove cart
  void removeFromCart(Food food) {
    _cart.remove(food);
  }

  @override
  notifyListeners();
}
