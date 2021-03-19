import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shopping_app/provider/CartProvider.dart';

class CartItemss extends StatelessWidget {
  final String id;
  final String title;
  final String prodctId;
  final double price;
  final int quantity;

  const CartItemss(
      {this.id, this.prodctId, this.title, this.price, this.quantity});

  @override
  Widget build(BuildContext context) {
    return Dismissible(
      onDismissed: (dismiss) {
        Provider.of<CartProvider>(context, listen: false).removeItem(prodctId);
      },
      key: ValueKey(id),
      background: Container(
        alignment: Alignment.centerRight,
        color: Colors.red,
        child: Icon(
          Icons.delete,
          size: 40,
        ),
      ),
      child: Card(
        child: ListTile(
          leading: CircleAvatar(
            child: FittedBox(
                child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("\$ $price"),
            )),
          ),
          title: Text(title),
          subtitle: Text("${price * quantity}"),
          trailing: Text("x $quantity"),
        ),
      ),
    );
  }
}
