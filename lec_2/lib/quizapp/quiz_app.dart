import 'package:flutter/material.dart';
import 'package:lec_2/quizapp/questions.dart';

class QuizApp extends StatefulWidget {
  @override
  _QuizAppState createState() => _QuizAppState();
}

class _QuizAppState extends State<QuizApp> {
  List<Questions> questions = [
    Questions(quesName: "is Pakistan is rich country", isCorrect: true),
    Questions(quesName: "is USA is rich country", isCorrect: true),
    Questions(quesName: "is INDIA is rich country", isCorrect: true),
    Questions(quesName: "is NOORSHAH is rich country", isCorrect: true),
    Questions(quesName: "is FATEH SHER is rich country", isCorrect: true),
    Questions(quesName: "is POILIC LINE is rich country", isCorrect: true),
  ];

  int _questionIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        centerTitle: true,
        title: Text("QUIZ APP"),
      ),
      body: Container(
        margin: EdgeInsets.all(20),
        child: Column(
          children: [
            Expanded(
              child: Container(
                child: Image.asset("graphics/pmap.png"),
              ),
            ),
            Expanded(
                flex: 2,
                child: Container(
                  alignment: Alignment.center,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(color: Colors.white)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "${questions[_questionIndex].quesName}",
                        style: TextStyle(fontSize: 30),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          FlatButton(
                            color: Colors.white,
                            child: Text("TRUE"),
                            onPressed: () {},
                          ),
                          FlatButton(
                            color: Colors.white,
                            child: Text("FALSE"),
                            onPressed: () {},
                          ),
                          FlatButton(
                            color: Colors.white,
                            child: Icon(Icons.arrow_forward),
                            onPressed: () {
                              setState(() {
                                if (_questionIndex < questions.length - 1) {
                                  _questionIndex++;
                                } else {
                                  _questionIndex = 0;
                                }
                              });
                            },
                          ),
                        ],
                      )
                    ],
                  ),
                )),
            Spacer(),
          ],
        ),
      ),
    );
  }
}
