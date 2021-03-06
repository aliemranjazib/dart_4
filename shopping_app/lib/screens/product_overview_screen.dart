import 'package:flutter/material.dart';
import 'package:shopping_app/widgets/productGrid.dart';

class ProductOverviewScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('SHOPPING APP'),
      ),
      body: ProductGrids(),
    );
  }
}
