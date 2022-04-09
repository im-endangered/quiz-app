import 'package:flutter/material.dart';
import './quiz.dart';
import './welcome.dart';
import './result.dart';
import './questionList.dart';
import './answers.dart';

void main() {
  runApp(_QuizApp());
}

class _QuizApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _QuizAppState();
  }
}

class _QuizAppState extends State<_QuizApp> {
  var quizStarted = false;
  var _questionIndex = 0;
  var finalScore = 0;

  void _answerSelected(int score) {
//    print(score);
    finalScore += score;
    setState(() {
      _questionIndex++;
    });
  }

  void reset() {
    setState(() {
      quizStarted = false;
      finalScore = 0;
      _questionIndex = 0;
    });
  }

  void startGame() {
    QuestionList.questionList.shuffle();
    setState(() {
      quizStarted = true;
    });
  }

  Widget bodyWidget() {
    if (quizStarted == false) {
      return Welcome(startGame);
    } else {
      if (_questionIndex < 15) {
        return Column(
          children: [
            Container(
              width: double.infinity,
              margin: EdgeInsets.fromLTRB(0, 5, 10, 3),
              child: Text(
                "Current score: $finalScore",
                textAlign: TextAlign.right,
              ),
            ),
            Quiz(
                questionList: QuestionList.questionList,
                questionIndex: _questionIndex,
                answerSelected: _answerSelected),
          ],
        );
      } else {
        return Result(finalScore, reset);
      }
    }
  }

  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('स्वागत छ '),
          ),
          body: bodyWidget()),
    );
  }
}
