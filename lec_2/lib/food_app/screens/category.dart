import 'package:flutter/material.dart';
import 'package:lec_2/food_app/customWidget/gridWidget.dart';
import 'package:lec_2/food_app/data/category_date.dart';

class CategoryScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Daily Meals"),
        ),
        body: FoodGrid());
  }
}
