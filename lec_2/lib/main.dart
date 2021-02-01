import 'package:flutter/material.dart';

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
        title: Text("Whatsapp"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            myButton(),
            myButton(),
            myButton(),
            myButton(),
          ],
        ),
      ),
    );
  }
}

Widget myButton() {
  return MaterialButton(
    color: Colors.blue,
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(
        "clicke me",
        style: TextStyle(fontSize: 20),
      ),
    ),
    onPressed: () {},
  );
}
