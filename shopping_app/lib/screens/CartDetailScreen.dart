import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shopping_app/models/product_model.dart';
import 'package:shopping_app/provider/CartProvider.dart';
import 'package:shopping_app/provider/product_provider.dart';
import 'package:shopping_app/widgets/CartItemss.dart';

class CartDetailScreen extends StatelessWidget {
  static const routeName = "/cartsScreen";
  @override
  Widget build(BuildContext context) {
    final cartData = Provider.of<CartProvider>(context);

    final h1 = TextStyle(fontSize: 20, color: Colors.white);
    final h2 = TextStyle(fontSize: 20, color: Colors.black);

    //final products = Provider.of<Product>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('Cart Items'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Card(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      "Total price :",
                      style: h2,
                    ),
                    Spacer(),
                    Chip(
                        elevation: 10,
                        backgroundColor: Theme.of(context).primaryColor,
                        label: Text(
                          "\$ ${cartData.totalPrice()}",
                          style: h1,
                        )),
                    TextButton(onPressed: () {}, child: Text("order now")),
                  ],
                ),
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: cartData.items.length,
                itemBuilder: (BuildContext context, int i) {
                  final item = cartData.items.values.toList()[i];
                  return CartItemss(
                    id: item.id,
                    title: item.title,
                    price: item.price,
                    quantity: item.quantity,
                    prodctId: cartData.items.keys.toList()[i],
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
