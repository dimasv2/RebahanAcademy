import 'package:first_app/quiz/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:url_launcher/url_launcher.dart';

class capkkuis extends StatefulWidget {
  const capkkuis({Key? key}) : super(key: key);

  @override
  State<capkkuis> createState() => _capkkuisState();
}

class _capkkuisState extends State<capkkuis> {
  _launchurl() async {
    const url = "https://github.com/dimasv2/bmi_pretest.git";
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw "Could not launch the Url";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Source Code Aplikasi Quesioner'),
      ),
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                Color.fromARGB(255, 6, 103, 136),
                Color.fromARGB(255, 83, 98, 146),
                Color.fromARGB(255, 6, 103, 136),
              ])),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 30,
              ),
              Container(
                height: 200,
                width: 150,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)),
                child: Image.asset(
                  'assets/details/quiz.png',
                  height: 100,
                ),
              ),
              SizedBox(
                height: 1,
              ),
              Text(
                'REBAHAN ACADEMY',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
              SizedBox(
                height: 3,
              ),
              Container(
                height: 400,
                width: 400,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const SizedBox(
                      height: 1,
                    ),
                    const Text(
                      'Source Code',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 34, 119, 188)),
                    ),
                    const SizedBox(
                      height: 1,
                    ),
                    const Text(
                      'Cara Download Code Aplikasi:                                      ',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.blue),
                    ),
                    Container(
                      padding: const EdgeInsets.all(15.0),
                      child: const Text(
                        'Flutter adalah framework dengan bahasa pemrograman Dart yang dikembangkan Google. Meskipun awalnya hanya digunakan untuk membuat aplikasi mobile (Android dan iOS), framework ini sudah mendukung pengembangan aplikasi berbasis web.',
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ),
                    // Container(
                    //   width: 250,
                    //   child: TextField(
                    //     decoration: InputDecoration(
                    //       labelText: 'Email Address',
                    //       //suffixIcon: Icon(FontAwesomeIcons.envelope,
                    //       // size: 17,),
                    //     ),
                    //   ),
                    // ),
                    // Container(
                    //   width: 250,
                    //   child: TextField(
                    //     obscureText: true,
                    //     decoration: InputDecoration(
                    //       labelText: 'Password',
                    //       //suffixIcon: Icon(FontAwesomeIcons.eyeSlash,
                    //       //size: 17,),
                    //     ),
                    //   ),
                    // ),
                    // Padding(
                    //   padding: EdgeInsets.fromLTRB(20, 20, 40, 20),
                    //   child: Row(
                    //     mainAxisAlignment: MainAxisAlignment.end,
                    //     children: [
                    //       Text(
                    //         'Forget Password',
                    //         style: TextStyle(
                    //             color: Color.fromARGB(255, 9, 61, 231)),
                    //       )
                    //     ],
                    //   ),
                    // ),
                    const SizedBox(
                      height: 10,
                    ),

                    IconButton(
                      icon: const Icon(
                        Icons.link_outlined,
                        size: 40,
                        color: Colors.blue,
                      ),
                      onPressed: _launchurl,
                    ),
                    SizedBox(
                      width: 2,
                    ),
                    Text('  Link Download')
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
