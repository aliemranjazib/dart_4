import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shopping_app/models/product_model.dart';
import 'package:shopping_app/provider/CartProvider.dart';
import 'package:shopping_app/provider/product_provider.dart';
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
            Consumer<CartProvider>(
              builder: (_, cart, child) {
                return Badge(
                  iconData: Icons.shopping_cart,
                  notificationCount: cart.itemCount,
                );
              },
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: PopupMenuButton(
                  onSelected: (selectedValue) {
                    setState(() {
                      if (selectedValue == FiltenItems.Favourite) {
                        // retrun something
                        selectedFilter = true;
                      } else {
                        //return other
                        selectedFilter = false;
                      }
                    });
                  },
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  elevation: 10,
                  itemBuilder: (ctx) {
                    return [
                      PopupMenuItem(
                        child: Text(
                          "Favourite items",
                        ),
                        value: FiltenItems.Favourite,
                      ),
                      PopupMenuItem(
                        child: Text(
                          "all items",
                        ),
                        value: FiltenItems.AllItems,
                      ),
                    ];
                  }),
            ),
          ],
        ),
        body: ProductGrids(selectedFilter),
      ),
    );
  }
}
