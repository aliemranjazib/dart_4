import 'package:flutter/material.dart';

import 'lect_6 Whatsapp_clone_completed_/lect_5_whatsapp_ui.dart';

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
