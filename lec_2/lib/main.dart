import 'package:flutter/material.dart';
import 'package:lec_2/Whatsapp_clone/lect_5_whatsapp_ui.dart';

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
      theme: ThemeData(brightness: Brightness.dark),
      home: WhatsappUi(),
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
      body: WhatsappUi(),
    );
  }
}
