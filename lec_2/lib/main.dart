import 'package:flutter/material.dart';
import 'package:lec_2/food_app/customWidget/gridWidget.dart';
import 'package:lec_2/food_app/screens/TabActivity.dart';
import 'package:lec_2/food_app/screens/categorydetails.dart';
import 'package:lec_2/food_app/screens/moredetail.dart';

import 'food_app/model/meals.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<Meal> favourite;
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
        "/": (context) => Tabscreen(favourite),
        FoodGrid.categoryRout: (context) => CategorySingle(),
        MoreDetails.routeName: (_) => MoreDetails(),
      },
    );
  }
}
