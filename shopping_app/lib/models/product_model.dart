import 'package:flutter/widgets.dart';

class Product with ChangeNotifier {
  final String id;
  final String title;
  final String description;
  final String imageUrl;
  final double price;
  bool isFavourite;
  Product({
    this.id,
    this.title,
    this.description,
    this.imageUrl,
    this.price,
    this.isFavourite = false,
  });

  void setToggleStatus() {
    isFavourite = !isFavourite;
    print('toggler');
    notifyListeners();
  }
}
