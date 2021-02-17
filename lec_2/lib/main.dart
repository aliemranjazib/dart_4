import 'package:flutter/material.dart';
import 'package:lec_2/food_app/customWidget/gridWidget.dart';
import 'package:lec_2/food_app/screens/category.dart';
import 'package:lec_2/food_app/screens/categorydetails.dart';

import 'lect_6 Whatsapp_clone_completed_/lect_5_whatsapp_ui.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Title',
      theme: ThemeData(
          primarySwatch: Colors.pink,
          fontFamily: 'railway-black',
          textTheme: ThemeData.light().textTheme.copyWith(
                  headline4: TextStyle(
                fontSize: 25,
                color: Colors.white,
              ))),
      routes: {
        "/": (context) => CategoryScreen(),
        FoodGrid.categoryRout: (context) => CategorySingle()
      },
    );
  }
}
