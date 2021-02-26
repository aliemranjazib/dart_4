import 'package:flutter/material.dart';
import 'package:lec_2/food_app/screens/Favourite.dart';
import 'package:lec_2/food_app/screens/category.dart';
import 'package:lec_2/food_app/screens/fooddawer.dart';

class Tabscreen extends StatefulWidget {
  @override
  _TabscreenState createState() => _TabscreenState();
}

class _TabscreenState extends State<Tabscreen> {
  List<Map<String, Object>> pages = [
    {"page": CategoryScreen(), "title": "enjoy your meals"},
    {"page": FavouriteScreen(), "title": "enjoy your favrt meals"}
  ];

  int selectedIndex = 0;
  selectedPage(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: FoodDrawer(),
      appBar: AppBar(
        title: Text(
          "${pages[selectedIndex]['title']}",
        ),
      ),
      body: pages[selectedIndex]['page'],
      bottomNavigationBar: BottomNavigationBar(
          onTap: selectedPage,
          backgroundColor: Colors.pink,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.black,
          currentIndex: selectedIndex,
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.category), label: "catagory"),
            BottomNavigationBarItem(
                icon: Icon(Icons.favorite), label: "favorite")
          ]),
    );
  }
}
