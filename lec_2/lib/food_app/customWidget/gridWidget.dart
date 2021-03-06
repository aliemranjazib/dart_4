import 'package:flutter/material.dart';
import 'package:lec_2/food_app/data/category_date.dart';
import 'package:lec_2/food_app/screens/categorydetails.dart';

class FoodGrid extends StatelessWidget {
  static const categoryRout = "/category-meals";
  newScreen(BuildContext context, String titletext, String id) {
    Navigator.of(context)
        .pushNamed(categoryRout, arguments: {"title": titletext, "id": id});
  }

  @override
  Widget build(BuildContext context) {
    return GridView(
        padding: EdgeInsets.all(15),
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 300,
            childAspectRatio: 3 / 2,
            crossAxisSpacing: 15,
            mainAxisSpacing: 15),
        children: CATAGEORY_DATA
            .map((e) => InkWell(
                  splashColor: Colors.pink,
                  borderRadius: BorderRadius.circular(20),
                  onTap: () {
                    newScreen(context, e.title, e.id);
                  },
                  child: Container(
                    alignment: Alignment.center,
                    child: Text(
                      e.title,
                      style: Theme.of(context).textTheme.headline4,
                    ),
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            colors: [
                              e.color.withOpacity(0.7),
                              e.color,
                            ]),
                        borderRadius: BorderRadius.circular(20)),
                  ),
                ))
            .toList());
  }
}
