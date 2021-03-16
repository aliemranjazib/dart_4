import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shopping_app/models/product_model.dart';
import 'package:shopping_app/provider/CartProvider.dart';
import 'package:shopping_app/provider/product_provider.dart';

class CartDetailScreen extends StatelessWidget {
  static const routeName = "/cartsScreen";
  @override
  Widget build(BuildContext context) {
    final cartData = Provider.of<CartProvider>(context);

    final cartTextStyle = TextStyle(fontSize: 20, color: Colors.white);
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
                    CircleAvatar(
                        // child: Text(products.price.toString()),
                        ),
                    Spacer(),
                    Chip(
                        backgroundColor: Theme.of(context).primaryColor,
                        label: Text(
                          "\$ ${cartData.totalPrice()}",
                          style: cartTextStyle,
                        )),
                    TextButton(onPressed: () {}, child: Text("delete items")),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
