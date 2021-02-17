import 'package:flutter/material.dart';
import 'package:lec_2/food_app/data/meals-data.dart';

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
        itemCount: categorymeals.length,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            child: Card(
              child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Image.network(
                        categorymeals[index].imageUrl,
                        fit: BoxFit.fitWidth,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(categorymeals[index].title),
                      ),
                      ExpansionTile(
                        title: Text("steps to make this recipe"),
                        children: [
                          ListTile(
                              title:
                                  Text(categorymeals[index].steps.toString()))
                        ],
                      )
                    ],
                  )),
            ),
          );
        },
      ),
    );
  }
}
