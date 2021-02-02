import 'package:flutter/material.dart';
import 'package:lec_2/custombutton.dart';
import 'package:lec_2/lect_3_bilcalculator.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Title',
      theme: ThemeData(primarySwatch: Colors.red),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bill Counter"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            CustomButton(
              title: "one",
              onpressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => BillCounter()));
              },
            ),
          ],
        ),
      ),
    );
  }
}
