import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final String buttonText;
  final VoidCallback selectHandler;

  const Answer(
      {Key? key, required this.buttonText, required this.selectHandler})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: selectHandler,
        style: ElevatedButton.styleFrom(
          primary: Colors.green,
        ),
        child: Text(buttonText),
      ),
    );
  }
}
