import 'package:flutter/material.dart';

class SimpleListView extends StatelessWidget {
  List months = [
    "jan",
    'feb',
    'march',
    "apr",
    "may",
    "jan",
    'feb',
    'march',
    "apr",
    "may"
  ];
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        title: Text("simple listview"),
      ),
      body: ListView(
        children: List.generate(20, (i) {
          return Card(
            child: Center(
                child: Padding(
              padding: const EdgeInsets.all(18.0),
              child: Text("my lis is $i"),
            )),
          );
        }),
      ),
    );
  }
}
