import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shopping_app/models/product_model.dart';
import 'package:shopping_app/provider/product_provider.dart';

class ProductDetailScreen extends StatelessWidget {
  static const routeName = '/categorydetail';
  @override
  Widget build(BuildContext context) {
    final productId = ModalRoute.of(context).settings.arguments as String;
    final productDetails =
        Provider.of<ProductProvider>(context).findViewById(productId);
    return Scaffold(
      appBar: AppBar(
        title: Text(productDetails.title),
      ),
      body: Container(
        child: Image.network(productDetails.imageUrl),
      ),
    );
  }
}
