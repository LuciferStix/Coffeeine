import 'package:coffeeshop/components/coffeetile.dart';
import 'package:coffeeshop/models/coffee.dart';
import 'package:coffeeshop/models/coffeeshop.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopePage();
}

class _ShopePage extends State<ShopPage> {

  //add to cart
  void addtocart(Coffee item){
    Provider.of<CoffeeShop>(context,listen:false).additem(item);
  }



  @override
  Widget build(BuildContext context) {
    return Consumer<CoffeeShop>(
      builder: (context,value,child)=> SafeArea(
      child:  Padding(
        padding:const  EdgeInsets.all(25),
        child: Column(
            children: [
              const Text(
                "How would u like your coffe today ?",
               style: TextStyle(fontSize: 20)
               ),
               const SizedBox(height: 45),
               Expanded(
                child: ListView.builder(
                  itemCount: value.coffeeshop.length,
                  itemBuilder: (context, index) {
                    //get individual coffee
                    Coffee eachcoffee=value.coffeeshop[index];
                    
                    //return list tile 
                    return CoffeeTile(
                      coffee: eachcoffee,
                      onPressed: ()=>addtocart(eachcoffee),
                      icon:const Icon(Icons.add),
                      
                      );
                    

                  },)
                )
            ],
          ),
      ),
    )
    );
    
  }
}
