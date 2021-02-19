import 'package:flutter/material.dart';

import 'package:lec_2/food_app/model/meals.dart';
import 'package:lec_2/food_app/screens/moredetail.dart';

class MealsItem extends StatelessWidget {
  final String title;
  final String imageUrl;
  final int duration;
  final Complexity complexity;
  final Affordability affordability;
  const MealsItem({
    Key key,
    this.title,
    this.imageUrl,
    this.duration,
    this.complexity,
    this.affordability,
  }) : super(key: key);

  get comp {
    if (complexity == Complexity.Simple) {
      return "simple";
    } else if (complexity == Complexity.Hard) {
      return "hard";
    } else {
      return "Challenging";
    }
  }

  get affo {
    switch (affordability) {
      case Affordability.Affordable:
        return "affordable";
        break;
      case Affordability.Pricey:
        return "pricey";
      case Affordability.Luxurious:
        return "Luxurious";
      default:
        return "unknown";
    }
  }

  moredetail(BuildContext context) {
    Navigator.of(context).pushNamed(MoreDetails.routeName, arguments: title);
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        moredetail(context);
      },
      child: Card(
          color: Colors.white,
          elevation: 10,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20), topRight: Radius.circular(20))),
          child: Column(
            children: [
              Stack(
                children: [
                  Container(
                    child: ClipRRect(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20)),
                      child: Image.network(
                        imageUrl,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 50,
                    right: 0,
                    child: Container(
                        color: Colors.black54,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            title,
                            softWrap: true,
                            style: TextStyle(fontSize: 30, color: Colors.white),
                          ),
                        )),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.schedule,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text("$duration min")
                      ],
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.money,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text('$affo')
                      ],
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.dinner_dining,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text('$comp')
                      ],
                    )
                  ],
                ),
              ),
            ],
          )),
    );
  }
}
