import 'package:first_app/question.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import '/question.dart';
import '/answer.dart';

class Quiz extends StatelessWidget {
  //const MyWidget({Key? key}) : super(key: key);
final List<Map<String, Object>> questions;
final int questionIndex;
final VoidCallback answerQuestion;

Quiz ({required this.questions, required this.answerQuestion, required this.questionIndex});

  @override
  Widget build(BuildContext context) {
    return 
Column(
          children: [
            Question(
              questions[questionIndex]['questionText'] as String,
            ),
            ...(questions[questionIndex]['answers'] as List<String>)
                .map((answer) {
              return Answer(answerQuestion, answer);
            }).toList()
          ],
        );
        }
        }