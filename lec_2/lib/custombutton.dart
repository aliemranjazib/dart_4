import 'package:flutter/material.dart';
import 'package:lec_2/secondScreen.dart';

class CustomButton extends StatelessWidget {
  final String title;
  final GestureTapCallback onpressed;
  CustomButton({this.title, this.onpressed});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
        elevation: 5,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        color: Colors.red,
        child: Text(
          title,
          style: TextStyle(fontSize: 20),
        ),
        onPressed: onpressed);
  }
}
