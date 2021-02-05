import 'package:flutter/material.dart';
import 'package:lec_2/custombutton.dart';
import 'package:lec_2/lect_3_bilcalculator.dart';
import 'package:lec_2/quizapp/quiz_app.dart';
import 'package:lec_2/secondScreen.dart';
import 'package:lec_2/task1/task_1.dart';

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
      home: QuizApp(),
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
      body: BillCounter(),
    );
  }
}
