import 'package:coffeeshop/components/coffeetile.dart';
import 'package:coffeeshop/models/coffee.dart';
import 'package:coffeeshop/models/coffeeshop.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPage();
}

class _CartPage extends State<CartPage> {

  void removefromcart(Coffee coffee){
    Provider.of<CoffeeShop>(context,listen:false).removeitem(coffee);
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<CoffeeShop>(builder:(context,value,child)=> SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(25),
        child: Column(
          children: [
            const Text("Shopping Cart",style: TextStyle(fontSize: 20),),
            const SizedBox(height: 30,),
            Expanded(
              child:ListView.builder(
                itemCount: value.cart.length,
                itemBuilder: (context,index){

                  //get the cart list
                  Coffee eachcoffee=value.cart[index];

                  //return the coffee
                  return CoffeeTile(coffee: eachcoffee, onPressed: ()=>removefromcart(eachcoffee),icon: const Icon(Icons.delete));

              })
              )
          ],
        ),
      )
    ));
    
      }
}
