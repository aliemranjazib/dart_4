import 'package:flutter/material.dart';
import 'package:lec_2/custombutton.dart';

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              alignment: Alignment.center,
              height: 100,
              width: double.infinity,
              color: Colors.pink,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    height: 100,
                    width: 100,
                    color: Colors.purple,
                  ),
                  Container(
                    height: 100,
                    width: 100,
                    color: Colors.yellow,
                  ),
                  Container(
                    height: 100,
                    width: 100,
                    color: Colors.amber,
                  ),
                ],
              ),
            ),
            Container(
              height: 100,
              width: 100,
              color: Colors.pink,
            ),
            Container(
              height: 100,
              width: 100,
              color: Colors.pink,
            ),
          ],
        ),
      ),
    );
  }
}
