import 'package:coffeeshop/models/coffee.dart';
import 'package:flutter/material.dart';


class CoffeeTile extends StatelessWidget{

  final Coffee coffee;
  final Icon icon;
  void Function() onPressed;
  CoffeeTile({
    super.key,
    required this.coffee,
    required this.onPressed,
    required this.icon
  });

  @override
  Widget build(BuildContext context){
    return Container(
      margin: const EdgeInsets.only(bottom: 25),
      padding: const EdgeInsets.symmetric(vertical: 20,horizontal: 5),
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(18)

      ),
      child: ListTile(
        leading: Image.asset(coffee.imagepath),
        title: Text(coffee.name),
        subtitle: Text(coffee.price),
        trailing: IconButton(onPressed: onPressed , icon: icon),
      ),
    );
  }
}