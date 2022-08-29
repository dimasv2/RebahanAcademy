import 'package:first_app/dash_board.dart';
import 'package:first_app/dashboard.dart';
import 'package:first_app/home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(primaryColor: Colors.purple),
    debugShowCheckedModeBanner: false,
    home: drawer(),
  ));
}

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var FontAwesomeIcons;
    return Scaffold(
//       bottomNavigationBar:  GestureDetector(
// onTap: (){

// Navigator.of(context).push(
//   MaterialPageRoute(builder: ((context) {
//     return BmiDataScreen(

//     );
//   }),
//   ),
// );

// },
// child: Container(
//         height: 60,
//         margin: EdgeInsets.all(15),
//         decoration: BoxDecoration(
//          borderRadius: BorderRadius.circular(8),
//         color: const Color(0XFF517df6),

//         ),
//         child: const Center(
//           child: Text("Login",
//           style: TextStyle(
//             fontSize: 18,
//             fontWeight: FontWeight.bold,
//             color: Colors.white,
//           ),
//         ),
//         ),
//       ),
//       ),
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
                height: 10,
              ),
              Image.asset('assets/awan.png', height: 200, fit: BoxFit.fill),
              const SizedBox(
                height: 15,
              ),
              const Text(
                'REBAHAN ACADEMY',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Container(
                height: 350,
                width: 300,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const SizedBox(
                      height: 30,
                    ),
                    const Text(
                      'Login To Your Account',
                      style: const TextStyle(
                          fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                      width: 250,
                      child: const TextField(
                        decoration: const InputDecoration(
                          labelText: 'Email Address',
                          //suffixIcon: Icon(FontAwesomeIcons.envelope,
                          // size: 17,),
                        ),
                      ),
                    ),
                    Container(
                      width: 250,
                      child: const TextField(
                        obscureText: true,
                        decoration: const InputDecoration(
                          labelText: 'Password',
                          //suffixIcon: Icon(FontAwesomeIcons.eyeSlash,
                          //size: 17,),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(20, 20, 40, 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          const Text(
                            'Forget Password',
                            style: const TextStyle(
                                color: Color.fromARGB(255, 9, 61, 231)),
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: ((context) {
                              return const dashboards();
                            }),
                          ),
                        );
                      },
                      child: Container(
                        alignment: Alignment.center,
                        width: 250,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            gradient: const LinearGradient(
                                begin: Alignment.centerLeft,
                                end: Alignment.centerRight,
                                colors: [
                                  const Color.fromARGB(255, 110, 192, 224),
                                  Color.fromARGB(255, 9, 98, 231),
                                  Color.fromARGB(255, 110, 192, 224),
                                ])),
                        child: const Padding(
                          padding: EdgeInsets.all(12.0),
                          child: Text(
                            'Login',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    )
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
