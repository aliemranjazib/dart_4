import 'package:flutter/widgets.dart';

enum Complexity {
  Simple,
  Challenging,
  Hard,
}
enum Affordability { Pricey, Luxurious, Affordable }

class Meal {
  final String id;
  final List<String> categories;
  final String title;
  final List<String> ingredients;
  final List<String> steps;
  final int duration;
  final Complexity complexity;
  final Affordability affordability;
  final bool isGlutenFree;
  final bool isVegan;
  final bool isVegetarian;
  final bool isLactoseFree;
  final String imageUrl;
  const Meal({
    @required this.id,
    @required this.categories,
    @required this.title,
    @required this.ingredients,
    @required this.steps,
    @required this.duration,
    @required this.complexity,
    @required this.affordability,
    @required this.isGlutenFree,
    @required this.isVegan,
    @required this.isVegetarian,
    @required this.isLactoseFree,
    @required this.imageUrl,
  });
}
