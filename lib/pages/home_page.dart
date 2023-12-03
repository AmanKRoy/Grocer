import 'package:flutter/material.dart';
import 'package:groceryshop/components/groceryitem_tile.dart';
import 'package:groceryshop/model/cart_model.dart';
import 'package:groceryshop/pages/cart_page.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: ()=> Navigator.push(context,MaterialPageRoute(builder: (context){
          return const CartPage();

        },
        )),
      backgroundColor: Colors.black,
      foregroundColor: Colors.white,
      child: const Icon(Icons.shopping_bag),
      ),
      body: SafeArea(child: 
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 24,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 24),
            child: Text(
              'Good Morning.'
            ),
          ),
          const SizedBox(height: 4),
          const Padding(padding: EdgeInsets.symmetric(horizontal: 24),
          child: Text(
            "Let's order some fresh groceries for you",
          style: TextStyle(fontSize: 35,fontWeight: FontWeight.bold),
          ),
          ),
          const SizedBox(height: 24),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 24),
            child: Divider(),
          ),
          const SizedBox(height: 24),
          const Padding(padding: EdgeInsets.symmetric(horizontal: 24),
          child: Text("Fresh items",style: TextStyle(fontSize: 16),
          ),
          ),
          Expanded(
            child:Consumer<CartModel>(
              builder: (context,value,child){
              return  GridView.builder(
              itemCount: value.shopitems.length,
              padding: const EdgeInsets.all(12),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount:2,
                childAspectRatio: 1/1.3,
                ),
               itemBuilder: (context, indexx){
              return GroceryItemTile(
                itemName: value.shopitems[indexx][0],
                itemPrice: value.shopitems[indexx][1],
                imagePath: value.shopitems[indexx][2],
                color: value.shopitems[indexx][3],
                onPressed: () { 
                  Provider.of<CartModel>(context, listen: false)
                  .addItemToCart(indexx);
                 },
              );
            },
              );
            }
          ),
          ),
        ],
      ),
      ),
    );
  }
}