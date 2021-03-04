import 'package:flutter/material.dart';
import 'package:shopping_app/screens/product_detail_screen.dart';
import 'package:shopping_app/screens/product_overview_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'shopping app',
      theme: ThemeData(
          visualDensity: VisualDensity.adaptivePlatformDensity,
          primarySwatch: Colors.deepPurple,
          fontFamily: 'Lato',
          accentColor: Colors.deepOrange),
      home: ProductOverviewScreen(),
      routes: {ProductDetailScreen.routeName: (_) => ProductDetailScreen()},
    );
  }
}