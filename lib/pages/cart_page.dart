import 'package:flutter/material.dart';

class CartPage extends StatefulWidget {
  CartPage({super.key});

  State<CartPage> createState() => _CartPage();
}

class _CartPage extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("Cart page"),
    );
  }
}
