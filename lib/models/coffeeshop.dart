import 'package:coffeeshop/models/coffee.dart';
import 'package:flutter/material.dart';

class CoffeeShop extends ChangeNotifier{

  //coffee in the shop
  final List<Coffee> _shop=[
    Coffee(
      name: "Black Coffee", 
      price: "70", 
      imagepath: "lib/images/hot-coffee.png"),
      Coffee(
      name: "Hot Chocolate", 
      price: "90", 
      imagepath: "lib/images/cocoa.png"),
      Coffee(
      name: "Latte", 
      price: "90", 
      imagepath: "lib/images/latte.png"),
      Coffee(
      name: "espresso", 
      price: "75", 
      imagepath: "lib/images/coffee-cup.png"),
      Coffee(
      name: "chai", 
      price: "10", 
      imagepath: "lib/images/coffee-cup.png")
  ];

  //user cart
  final List<Coffee> _cart=[];

  //get coffee list
  List<Coffee> get coffeeshop =>_shop;

  //get user cart list
  List<Coffee> get cart=>_cart;

  //add coffe to cart

  void additem(Coffee coffee){
    _cart.add(coffee);
    notifyListeners();
  }
  //remove coffee to cart

  void removeitem(Coffee coffee){
    _cart.remove(coffee);
    notifyListeners();
  }

}