import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shopping_app/provider/CartProvider.dart';
import 'package:shopping_app/screens/CartDetailScreen.dart';
import 'package:shopping_app/widgets/Badge.dart';
import 'package:shopping_app/widgets/productGrid.dart';

enum FiltenItems { Favourite, AllItems }

class ProductOverviewScreen extends StatefulWidget {
  @override
  _ProductOverviewScreenState createState() => _ProductOverviewScreenState();
}

class _ProductOverviewScreenState extends State<ProductOverviewScreen> {
  var selectedFilter = false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('SHOPPING APP'),
          actions: [
            Consumer<CartProvider>(builder: (c, carts, child) {
              return Badge(
                iconData: Icons.shopping_cart,
                notificationCount: carts.countItems,
                onTap: () {
                  Navigator.pushNamed(context, CartDetailScreen.routeName);
                },
              );
            }),
            PopupMenuButton(onSelected: (selectedValu) {
              setState(() {
                if (selectedValu == FiltenItems.Favourite) {
                  selectedFilter = true;
                } else {
                  selectedFilter = false;
                }
              });
            }, itemBuilder: (_) {
              return [
                PopupMenuItem(
                  value: FiltenItems.Favourite,
                  child: ListTile(
                    leading: Icon(Icons.favorite),
                    title: Text("favourite"),
                  ),
                ),
                PopupMenuItem(
                  value: FiltenItems.AllItems,
                  child: ListTile(
                    leading: Icon(Icons.list),
                    title: Text("all items"),
                  ),
                ),
              ];
            }),
          ],
        ),
        body: ProductGrids(selectedFilter),
      ),
    );
  }
}
