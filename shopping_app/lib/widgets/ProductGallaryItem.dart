import 'package:flutter/material.dart';
import 'package:shopping_app/screens/product_detail_screen.dart';

class ProductGallaryItem extends StatelessWidget {
  final String imageUrl;
  final String title;

  ProductGallaryItem(this.imageUrl, this.title);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: GridTile(
          child: InkWell(
            onTap: () {
              Navigator.of(context)
                  .pushNamed(ProductDetailScreen.routeName, arguments: title);
            },
            child: Image.network(
              imageUrl,
              fit: BoxFit.cover,
            ),
          ),
          footer: GridTileBar(
            backgroundColor: Colors.black87,
            title: Text(
              title,
              textAlign: TextAlign.center,
            ),
            leading: Icon(
              Icons.favorite,
              color: Theme.of(context).accentColor,
            ),
            trailing: Icon(
              Icons.shopping_cart,
              color: Theme.of(context).accentColor,
            ),
          ),
        ),
      ),
    );
  }
}
