import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:first_app/answer.dart';
import 'package:first_app/question.dart';
import 'package:flutter/material.dart';


class dash extends StatefulWidget {
  const dash({Key? key}) : super(key: key);

  @override
  State<dash> createState() => _dashState();
}

class _dashState extends State<dash> {
  var _questionIndex = 0;

  void _answerQuestion() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      {
        'questionText': 'What\'s your favorite color?',
        'answers': ['Black', 'Red', 'Green', 'White']
      },
      {
        'questionText': 'What\'s your favorite animal?',
        'answers': ['Rabbit', 'Snake', 'Elephant', 'Lion']
      },
      {
        'questionText': 'What\'s your favorite instructor?',
        'answers': ['Max', 'Mex', 'Muz', 'Mez']
      },
    ];
    
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 251, 252, 253),
     appBar: AppBar(
          title: Center (child: Text('My First App'),
        ),
        ),
        body: Column(
          children: [
            Question(
              questions[_questionIndex]['questionText'] as String,
            ),
            ...(questions[_questionIndex]['answers'] as List<String>)
                .map((answer) {
              return Answer(_answerQuestion, answer);
            }).toList()
          ],
        ),
         bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Color.fromARGB(255, 251, 252, 253),
        color: Color.fromARGB(255, 9, 132, 214),
        items: [
        Icon(Icons.home,
        color: Colors.white),
         Icon(Icons.add,
         color: Colors.white),
          Icon(Icons.settings,
          color: Colors.white,),
      ]),
    );
  }
}

class _answerQuestion {
}