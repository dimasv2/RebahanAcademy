import 'package:flutter/material.dart';
import '../quiz/first_app/quiz.dart';
import '../quiz/first_app/result.dart';

// import './quiz.dart';
// import './result.dart';
// void main() {
//   runApp(MyApp());
// }

void main() => runApp(MyApps());

class MyApps extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppsState();
  }
}

class _MyAppsState extends State<MyApps> {
  final _questions = const [
    {
      'questionText': 'Apa Warna Favorit Kamu?',
      'answers': [
        {'text': 'Hitam', 'score': 10},
        {'text': 'Merah', 'score': 5},
        {'text': 'Hijau', 'score': 3},
        {'text': 'Biru', 'score': 1},
      ],
    },
    {
      'questionText': 'Apa Hewan Kesukaanmu?',
      'answers': [
        {'text': 'Kelinci', 'score': 3},
        {'text': 'Ular', 'score': 11},
        {'text': 'Gajah', 'score': 5},
        {'text': 'Singa', 'score': 9},
      ],
    },
    {
      'questionText': 'Apa Bahasa Pemrograman Kesukaanmu?',
      'answers': [
        {'text': 'PHP', 'score': 1},
        {'text': 'Java', 'score': 1},
        {'text': 'C++', 'score': 1},
        {'text': 'Dart', 'score': 1},
      ],
    },
  ];
  var _questionIndex = 0;
  var _totalScore = 0;

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestion(int score) {
    // var aBool = true;
    // aBool = false;

    _totalScore += score;

    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
    if (_questionIndex < _questions.length) {
      print('We have more questions!');
    } else {
      print('No more questions!');
    }
  }

  @override
  Widget build(BuildContext context) {
    // var dummy = const ['Hello'];
    // dummy.add('Max');
    // print(dummy);
    // dummy = [];
    // questions = []; // does not work if questions is a const

    return Scaffold(
      appBar: AppBar(
        title: Text('APP QUIZ'),
      ),
      body: _questionIndex < _questions.length
          ? Quiz(
              answerQuestion: _answerQuestion,
              questionIndex: _questionIndex,
              questions: _questions,
            )
          : Result(_totalScore, _resetQuiz),
    );
  }
}
