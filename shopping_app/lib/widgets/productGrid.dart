import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shopping_app/models/product_model.dart';
import 'package:shopping_app/provider/product_provider.dart';

import 'ProductGallaryItem.dart';

class ProductGrids extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final products = Provider.of<ProductProvider>(context).item;
    return GridView.builder(
        itemCount: products.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 20,
            crossAxisSpacing: 20,
            childAspectRatio: 3 / 2),
        itemBuilder: (context, i) {
          return ChangeNotifierProvider(
              create: (context) => products[i], child: ProductGallaryItem());
        });
  }
}
