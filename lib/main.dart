import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

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

  void _answerQuestion() {
    setState(() {
      _questionIndex++;
    });
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      'What\'s your favorite color?',
      'What\'s your favorite animal?'
    ];

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
        body: Column(
          children: <Widget>[
            Question(
              questionText: questions[_questionIndex],
            ),
            Answer(
              buttonText: 'Button 1',
              selectHandler: _answerQuestion,
            ),
            Answer(
              buttonText: 'Button 2',
              selectHandler: _answerQuestion,
            ),
            Answer(
              buttonText: 'Button 3',
              selectHandler: _answerQuestion,
            ),
          ],
        ),
      ),
    );
  }
}
