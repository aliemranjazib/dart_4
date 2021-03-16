import 'package:flutter/widgets.dart';

class CartProvider with ChangeNotifier {
  Map<String, CartItems> _items = {};

  Map<String, CartItems> get items {
    return {..._items};
  }

  int get countItems {
    return _items == null ? 0 : _items.length;
  }

  double totalPrice() {
    double total = 0.0;
    _items.forEach((key, value) {
      total = value.price * value.quantity;
    });

    return total;
  }

  void addItem(String productId, double productprice, String producttitle) {
    if (_items.containsKey(productId)) {
      _items.update(
          productId,
          (existingId) => CartItems(
              id: existingId.id,
              price: existingId.price,
              title: existingId.title,
              quantity: existingId.quantity + 1));
    } else {
      _items.putIfAbsent(
          productId,
          () => CartItems(
              id: productId,
              price: productprice,
              title: producttitle,
              quantity: 1));
    }
    notifyListeners();
  }
}

class CartItems {
  final String id;
  final String title;
  final double price;
  final int quantity;

  CartItems({
    @required this.id,
    @required this.price,
    @required this.title,
    @required this.quantity,
  });
}
