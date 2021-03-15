import 'package:flutter/widgets.dart';
import 'package:shopping_app/models/product_model.dart';

class CartProvider with ChangeNotifier {
  Map<String, CartItem> _items = {};

  Map<String, CartItem> get items {
    return {..._items};
  }

  int get itemCount {
    return _items == null ? 0 : _items.length;
  }

  void addItems(String productId, title, price) {
    if (_items.containsKey(productId)) {
      _items.update(
          productId,
          (existingId) => CartItem(
              id: existingId.id,
              title: existingId.title,
              price: existingId.price,
              quantity: existingId.quantity + 1));
    } else {
      _items.putIfAbsent(
          productId,
          () => CartItem(
              id: DateTime.now().toString(),
              title: title,
              price: price,
              quantity: 1));
    }
    notifyListeners();
  }
}

class CartItem {
  final String title;
  final String id;
  final int quantity;
  final double price;

  CartItem({
    @required this.id,
    @required this.title,
    @required this.price,
    @required this.quantity,
  });
}
