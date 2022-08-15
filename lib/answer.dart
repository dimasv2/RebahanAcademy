
import 'package:flutter/material.dart';


class Answer extends StatelessWidget {

  
  final VoidCallback selectHandler;
  final String answerText;
Answer(this.selectHandler, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
     height: 40.0, 
      width: 200.0, 
      margin: EdgeInsets.all(5),
//width: MediaQuery.of(context).size.width * 0.5,
      //width: double.infinity,
      child: RaisedButton(
        
        color: Colors.blue,
        textColor: Colors.white,
        child: Text(answerText),
        onPressed: selectHandler,
        
      ),
    );
  }
}
