import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shopping_app/provider/product_provider.dart';
import 'ProductGallaryItem.dart';

class ProductGrids extends StatelessWidget {
  final fav;
  ProductGrids(this.fav);
  @override
  Widget build(BuildContext context) {
    final productDetail = Provider.of<ProductProvider>(context);
    final products = fav ? productDetail.favourite : productDetail.item;
    return GridView.builder(
        itemCount: products.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 20,
          crossAxisSpacing: 20,
          childAspectRatio: 3 / 2,
        ),
        itemBuilder: (context, i) {
          return ChangeNotifierProvider.value(
              value: products[i], child: ProductGallaryItem());
        });
  }
}
