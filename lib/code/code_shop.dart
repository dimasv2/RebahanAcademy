// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class cshop extends StatefulWidget {
  const cshop({Key? key}) : super(key: key);

  @override
  State<cshop> createState() => _cshopState();
}

class _cshopState extends State<cshop> {
  _launchurl() async {
    const url = "https://github.com/dimasv2/bmi_pretest.git";
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw "Could not launch the Url";
    }
  }
  //@override
//   Widget build(BuildContext context) {
//     return Scaffold();
//   }
// }

// class cbmi extends StatelessWidget {
//   const cbmi({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Source Code Aplikasi Belanja'),
      ),
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: const BoxDecoration(
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
              const SizedBox(
                height: 30,
              ),
              Container(
                height: 200,
                width: 150,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)),
                child: Image.asset(
                  'assets/details/shop.png',
                  height: 100,
                ),
              ),
              const SizedBox(
                height: 1,
              ),
              const Text(
                'REBAHAN ACADEMY',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
              const SizedBox(
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
                    // const SizedBox(
                    //   height: 1,
                    // ),

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
                    // RichText(
                    //   text: TextSpan(
                    //     text: 'non',
                    //     children: [
                    //       const TextSpan(),
                    //       TextSpan(
                    //         text: 'text.',
                    //         recognizer: TapGestureRecognizer()
                    //           ..onTap = () async {
                    //             // ignore: prefer_const_declarations
                    //             final url =
                    //                 'https://github.com/flutter/gallery/';
                    //             if (await canLaunch(url)) {
                    //               await launch(
                    //                 url,
                    //                 forceSafariVC: false,
                    //               );
                    //             }
                    //           },
                    //       ),
                    //       const TextSpan(),
                    //     ],
                    //   ),
                    // )
                    // GestureDetector(
                    //   onTap: () {
                    //     launch('https://docs.flutter.io/flutter/services/UrlLauncher-class.html');

                    //   },
                    //   child: Container(
                    //     alignment: Alignment.center,
                    //     width: 250,
                    //     decoration: BoxDecoration(
                    //         borderRadius: BorderRadius.circular(50),
                    //         gradient: LinearGradient(
                    //             begin: Alignment.centerLeft,
                    //             end: Alignment.centerRight,
                    //             colors: [
                    //               Color.fromARGB(255, 110, 192, 224),
                    //               Color.fromARGB(255, 9, 98, 231),
                    //               Color.fromARGB(255, 110, 192, 224),
                    //             ])),
                    //     child: Padding(
                    //       padding: EdgeInsets.all(12.0),
                    //       child: Text(
                    //         'Download Kode Aplikasi',
                    //         style: TextStyle(
                    //             color: Colors.white,
                    //             fontSize: 20,
                    //             fontWeight: FontWeight.bold),
                    //       ),
                    //     ),
                    //   ),
                    // )
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
