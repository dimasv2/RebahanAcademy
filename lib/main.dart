import 'package:first_app/answer.dart';
import 'package:first_app/login.dart';
import 'package:first_app/question.dart';
import 'package:first_app/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:first_app/answer.dart';
import 'package:provider/provider.dart';
import 'package:first_app/controllers/book.controller.dart';
import 'package:provider/provider.dart';
import './splash_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => BookController(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: SplashScreen(),
      ),
    );
  }
}
