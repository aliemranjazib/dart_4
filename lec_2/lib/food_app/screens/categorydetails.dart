import 'package:flutter/material.dart';
import 'package:lec_2/food_app/customWidget/meals-item.dart';
import 'package:lec_2/food_app/data/meals-data.dart';
import 'package:lec_2/food_app/model/meals.dart';

class CategorySingle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final routArg = ModalRoute.of(context).settings.arguments as Map;
    final categoryTitle = routArg["title"];
    final categoryId = routArg["id"];

   

    final categorymeals =
        DUMMY_MEALS.where((m) => m.categories.contains(categoryId)).toList();

    return Scaffold(
      appBar: AppBar(
        title: Text(categoryTitle),
      ),
      body: ListView.builder(
        shrinkWrap: true,
        itemCount: categorymeals.length,
        itemBuilder: (BuildContext context, int index) {
          return MealsItem(
            title: categorymeals[index].title,
            imageUrl: categorymeals[index].imageUrl,
            duration: categorymeals[index].duration,
            complexity: categorymeals[index].complexity,
            affordability: categorymeals[index].affordability,
            id: categorymeals[index].id,
          );
        },
      ),
    );
  }
}
