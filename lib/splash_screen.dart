import 'dart:async';

import 'package:first_app/login.dart';
import 'package:flutter/material.dart';


class SplashScreen extends StatefulWidget {

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
@override
  void initState() {
    // TODO: implement initState
    
    Timer(const Duration(seconds: 8), () {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const LoginPage() ));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
           width: MediaQuery.of(context).size.width,
           decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
               Color.fromARGB(255, 6, 175, 231),
                Color.fromARGB(255, 228, 232, 247),
                Color.fromARGB(255, 6, 175, 231),
              ]
            )
           ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
             const Text('WELCOME', style: TextStyle(fontSize: 40, 
            color: Color.fromARGB(255, 39, 4, 235), fontWeight: FontWeight.bold),),
          Image.asset('assets/awan.png'),
           //Center(child: FlutterLogo(size: 280)),
            const Text('FIRST APP FLUTTER', style: TextStyle(fontSize: 30,
             color: Color.fromARGB(255, 65, 27, 233), fontWeight: FontWeight.bold),),
            const Text('REBAHAN ACADEMY', style: TextStyle(fontSize: 20, 
            color: Colors.white, fontWeight: FontWeight.bold),),
          ],
        ),
      ),),),
    );
    
  }
}