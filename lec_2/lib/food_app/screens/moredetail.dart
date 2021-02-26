import 'package:flutter/material.dart';
import 'package:lec_2/food_app/data/meals-data.dart';

class MoreDetails extends StatelessWidget {
  static const routeName = "/more-detail";

  @override
  Widget build(BuildContext context) {
    final routId = ModalRoute.of(context).settings.arguments as String;
    final moredetailFilteration =
        DUMMY_MEALS.firstWhere((element) => element.id == routId);

    return Scaffold(
      appBar: AppBar(
        title: Text(moredetailFilteration.title),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.network(moredetailFilteration.imageUrl),
            buildContainer("INGREDIENTS"),
            Container(
              height: 200,
              margin: EdgeInsets.symmetric(horizontal: 20),
              child: ListView.builder(
                itemCount: moredetailFilteration.ingredients.length,
                itemBuilder: (BuildContext context, int index) {
                  return Card(
                      color: Colors.amber,
                      child: Padding(
                        padding: const EdgeInsets.all(18.0),
                        child: Text(
                          moredetailFilteration.ingredients[index],
                          style: TextStyle(fontSize: 15),
                        ),
                      ));
                },
              ),
            ),
            buildContainer("STEPS"),
            Container(
              height: 300,
              margin: EdgeInsets.symmetric(horizontal: 20),
              child: ListView.builder(
                itemCount: moredetailFilteration.steps.length,
                itemBuilder: (BuildContext context, int index) {
                  return Card(
                      color: Colors.amber,
                      child: ListTile(
                        leading: CircleAvatar(
                          child: Text("${index + 1}"),
                        ),
                        title: Text(
                          moredetailFilteration.steps[index],
                          style: TextStyle(fontSize: 15),
                        ),
                      ));
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  Container buildContainer(String title) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Text(
          title,
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
