import 'package:flutter/material.dart';

class ProductDetailScreen extends StatelessWidget {
  static const routeName = '/categorydetail';
  @override
  Widget build(BuildContext context) {
    final productTitle = ModalRoute.of(context).settings.arguments as String;
    return Scaffold(
      appBar: AppBar(
        title: Text(productTitle),
      ),
      body: Container(),
    );
  }
}