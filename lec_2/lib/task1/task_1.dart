import 'package:flutter/material.dart';

class TaskOne extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Expanded(
            flex: 1,
            child: Container(
              height: double.infinity,
              color: Colors.purple,
              child: RotatedBox(
                quarterTurns: 1,
                child: Center(
                  child: Text(
                    "YOU ARE AWESOME",
                    style: TextStyle(fontSize: 35, color: Colors.white),
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: Column(
              children: [
                Expanded(
                  child: Container(
                    color: Colors.deepPurple,
                  ),
                ),
                Expanded(
                  child: Container(
                    color: Colors.blue,
                  ),
                ),
                Expanded(
                  child: Container(
                    color: Colors.amber,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
