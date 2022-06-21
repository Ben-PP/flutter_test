import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  var _totalScore = 0;

  final List<Map<String, Object>> _questions = [
      {
        'questionText': 'What\'s your favorite color?',
        'answers': [
          {'text': 'Black', 'score': 10},
          {'text': 'Green', 'score': 5},
          {'text': 'White', 'score': 3},
          {'text': 'Green', 'score': 1}
        ],
      },
      {
        'questionText': 'What\'s your favorite animal?',
        'answers': [
          {'text': 'Snake', 'score': 10},
          {'text': 'Rabbit', 'score': 5},
          {'text': 'Elephant', 'score': 3},
          {'text': 'Lion', 'score': 1}
        ],
      },
      {
        'questionText': 'Who is your favorite coder?',
        'answers': [
          {'text': 'Karel', 'score': 1},
          {'text': 'Ben', 'score': 1},
        ],
      },
    ];

  void _answerQuestion(int score) {
    _totalScore += score;
    setState(() {
      _questionIndex++;
    });
  }

  @override
  Widget build(BuildContext context) {
    

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const SizedBox(
            width: double.infinity,
            child: Text(
              'Nelli',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 35),
            ),
          ),
        ),
        body: _questionIndex < _questions.length
        ? Quiz(
            answerQuestion: _answerQuestion,
            questionIndex: _questionIndex,
            questions: _questions,
          )
        : const Result()
      ),
    );
  }
}
