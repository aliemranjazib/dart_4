import 'package:flutter/material.dart';

class FoodDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          DrawerHeader(child: Text("FOODIES")),
          ListTile(
            leading: Icon(Icons.filter),
            title: Text("filter"),
          )
        ],
      ),
    );
  }
}
