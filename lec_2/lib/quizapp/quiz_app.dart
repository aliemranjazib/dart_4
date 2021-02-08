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
                          MaterialButton(
                            elevation: 5,
                            color: Colors.white,
                            child: Text("TRUE"),
                            onPressed: () {
                              _checkAnswer(true);
                            },
                          ),
                          MaterialButton(
                            elevation: 5,
                            color: Colors.white,
                            child: Text("FALSE"),
                            onPressed: () {
                              _checkAnswer(false);
                            },
                          ),
                          MaterialButton(
                            elevation: 5,
                            color: Colors.white,
                            child: Icon(Icons.arrow_forward),
                            onPressed: () {
                              _increments();
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

  void _increments() {
    setState(() {
      (_questionIndex < questions.length - 1)
          ? _questionIndex++
          : _questionIndex = 0;
    });
  }

  void _checkAnswer(bool isTrue) {
    if (isTrue == questions[_questionIndex].isCorrect) {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        action: SnackBarAction(label: "cancel", onPressed: () {}),
        duration: Duration(milliseconds: 1500),
        content: Text("TRUE"),
      ));
      _increments();
    } else {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        action: SnackBarAction(label: "cancel", onPressed: () {}),
        duration: Duration(milliseconds: 1500),
        content: Text("FALSE"),
      ));
    }
  }
}
