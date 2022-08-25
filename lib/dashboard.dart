import 'dart:ffi';

import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:first_app/expensive/main.dart';
import 'package:first_app/quiz/main.dart';
import 'package:first_app/view/bmi_data_screen.dart';
import 'package:first_app/view_app/apk_bmi.dart';
import 'package:first_app/view_app/apk_book.dart';
import 'package:first_app/view_app/apk_kuis.dart';
import 'package:first_app/view_app/apk_uang.dart';
import 'package:first_app/views/book_list_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(primaryColor: Colors.purple),
    debugShowCheckedModeBanner: false,
    home: MyApp(),
  ));
}

class drawer extends StatelessWidget {
  const drawer({Key? key}) : super(key: key);
  static const kIcon = <Icon>[
    Icon(Icons.home),
    Icon(Icons.add),
    Icon(Icons.person),
  ];
  @override
  Widget build(BuildContext context) {
//return DefaultTabController(length:kIcons.length,

    const drawerHeader = UserAccountsDrawerHeader(
      accountName: Text('Dimas Ramadan'),
      accountEmail: Text('dimasramadanv2@gmail.com'),
      currentAccountPicture: CircleAvatar(
        backgroundColor: Color.fromARGB(255, 247, 250, 251),
        child: FlutterLogo(size: 42.0),
      ),
      // otherAccountsPictures: <Widget>[
      //   CircleAvatar(
      //     backgroundColor: Colors.yellow,
      //     child: Text('A'),
      //   ),
      //   CircleAvatar(
      //     backgroundColor: Colors.red,
      //     child: Text('B'),
      //   )
      // ],
    );
    final drawerItems = ListView(
      children: <Widget>[
        const SizedBox(
          height: 10,
        ),
        drawerHeader,
        // GestureDetector(
        //   onTap: () {
        //     Navigator.of(context).push(
        //       MaterialPageRoute(
        //         builder: ((context) {
        //           return MyApps();
        //         }),
        //       ),
        //     );
        //   },
        //   child: Container(
        //     alignment: Alignment.center,
        //     width: 250,
        //     decoration: BoxDecoration(
        //         borderRadius: BorderRadius.circular(50),
        //         gradient: const LinearGradient(
        //             begin: Alignment.centerLeft,
        //             end: Alignment.centerRight,
        //             colors: [
        //               Color.fromARGB(255, 151, 176, 202),
        //               Color.fromARGB(255, 8, 191, 236),
        //               Color.fromARGB(255, 151, 176, 202),
        //             ])),
        //     child: const Padding(
        //       padding: EdgeInsets.all(12.0),
        //       child: Text(
        //         'KUESIONER',
        //         style: TextStyle(
        //             color: Colors.black,
        //             fontSize: 15,
        //             fontWeight: FontWeight.bold),
        //       ),
        //     ),
        //   ),
        // ),
        // const SizedBox(
        //   height: 10,
        // ),
        // GestureDetector(
        //   onTap: () {
        //     Navigator.of(context).push(
        //       MaterialPageRoute(
        //         builder: ((context) {
        //           return const BmiDataScreen();
        //         }),
        //       ),
        //     );
        //   },
        //   child: Container(
        //     alignment: Alignment.center,
        //     width: 250,
        //     decoration: BoxDecoration(
        //         borderRadius: BorderRadius.circular(50),
        //         gradient: const LinearGradient(
        //             begin: Alignment.centerLeft,
        //             end: Alignment.centerRight,
        //             colors: [
        //               Color.fromARGB(255, 151, 182, 202),
        //               Color.fromARGB(255, 8, 191, 236),
        //               Color.fromARGB(255, 151, 176, 202),
        //             ])),
        //     child: const Padding(
        //       padding: EdgeInsets.all(12.0),
        //       child: Text(
        //         'BMI KALKULATOR',
        //         style: TextStyle(
        //             color: Colors.black,
        //             fontSize: 15,
        //             fontWeight: FontWeight.bold),
        //       ),
        //     ),
        //   ),
        // ),
        // const SizedBox(
        //   height: 10,
        // ),
        // GestureDetector(
        //   onTap: () {
        //     Navigator.of(context).push(
        //       MaterialPageRoute(
        //         builder: ((context) {
        //           return const BookListPage();
        //         }),
        //       ),
        //     );
        //   },
        //   child: Container(
        //     alignment: Alignment.center,
        //     width: 250,
        //     decoration: BoxDecoration(
        //         borderRadius: BorderRadius.circular(50),
        //         gradient: const LinearGradient(
        //             begin: Alignment.centerLeft,
        //             end: Alignment.centerRight,
        //             colors: [
        //               Color.fromARGB(255, 151, 176, 202),
        //               Color.fromARGB(255, 8, 191, 236),
        //               Color.fromARGB(255, 151, 176, 202),
        //             ])),
        //     child: const Padding(
        //       padding: EdgeInsets.all(12.0),
        //       child: Text(
        //         'APK BUKU',
        //         style: TextStyle(
        //             color: Colors.black,
        //             fontSize: 15,
        //             fontWeight: FontWeight.bold),
        //       ),
        //     ),
        //   ),
        // ),
        // const SizedBox(
        //   height: 10,
        // ),
        // GestureDetector(
        //   onTap: () {
        //     Navigator.of(context).push(
        //       MaterialPageRoute(
        //         builder: ((context) {
        //           return MyHomePage();
        //         }),
        //       ),
        //     );
        //   },
        //   child: Container(
        //     alignment: Alignment.center,
        //     width: 250,
        //     decoration: BoxDecoration(
        //         borderRadius: BorderRadius.circular(50),
        //         gradient: const LinearGradient(
        //             begin: Alignment.centerLeft,
        //             end: Alignment.centerRight,
        //             colors: [
        //               Color.fromARGB(255, 151, 176, 202),
        //               Color.fromARGB(255, 8, 191, 236),
        //               Color.fromARGB(255, 151, 176, 202),
        //             ])),
        //     child: const Padding(
        //       padding: EdgeInsets.all(12.0),
        //       child: Text(
        //         'APK PENGELUARAN',
        //         style: TextStyle(
        //             color: Colors.black,
        //             fontSize: 15,
        //             fontWeight: FontWeight.bold),
        //       ),
        //     ),
        //   ),
        // ),

        ListTile(
            leading: const Icon(Icons.person),
            title: const Text('Profil'),
            onTap: () {} //=> Navigator.of(context).push(() ),
            ),

        ListTile(
          leading: const Icon(Icons.vpn_key),
          title: const Text('Ubah Password'),
          onTap: () {}, //=> Navigator.of(context).push(_NewPage(2)),
        ),
        ListTile(
          leading: const Icon(Icons.info),
          title: const Text('Tentang'),
          onTap: () {},
        ),
        ListTile(
            leading: const Icon(Icons.logout),
            title: const Text('Keluar'),
            onTap: () {} //=> Navigator.of(context).push(() ),
            ),
      ],
    );
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 166, 237, 246),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 9, 132, 214),
        title: const Text('Rebahan Academy'),
      ),
      body: Container(
        padding: const EdgeInsets.all(10.0),
        child: GridView.count(
          crossAxisCount: 2,
          children: <Widget>[
            Card(
              color: Color.fromARGB(255, 187, 209, 229),
              elevation: 15,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30)),
              margin: const EdgeInsets.only(left: 20.0, right: 20.0, top: 10.0),
              child: InkWell(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: ((context) {
                        return const bmi();
                      }),
                    ),
                  );
                },
                splashColor: Colors.blue,
                child: Center(
                    child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    ClipRRect(
                      borderRadius: BorderRadius.circular(50.0),
                      child: Image.asset(
                        'assets/images/bmi.png',
                        height: 120,
                        width: 120,
                      ),
                    ),
                    const Text(
                      'Apk BMI',
                      style: TextStyle(fontSize: 20.0),
                    )
                  ],
                )),
              ),
            ),

            Card(
              color: Color.fromARGB(255, 187, 209, 229),
              elevation: 15,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30)),
              margin: const EdgeInsets.only(left: 20.0, right: 20.0, top: 10.0),
              child: InkWell(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: ((context) {
                        return const uang();
                      }),
                    ),
                  );
                },
                splashColor: Colors.blue,
                child: Center(
                    child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    ClipRRect(
                      borderRadius: BorderRadius.circular(50.0),
                      child: Image.asset(
                        'assets/images/uang.png',
                        height: 120,
                        width: 120,
                      ),
                    ),
                    const Text(
                      'Apk Uang',
                      style: TextStyle(fontSize: 20.0),
                    )
                  ],
                )),
              ),
            ),

            Card(
              color: Color.fromARGB(255, 187, 209, 229),
              elevation: 15,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30)),
              margin: const EdgeInsets.only(left: 20.0, right: 20.0, top: 10.0),
              child: InkWell(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: ((context) {
                        return const book();
                      }),
                    ),
                  );
                },
                splashColor: Colors.blue,
                child: Center(
                    child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    ClipRRect(
                      borderRadius: BorderRadius.circular(50.0),
                      child: Image.asset(
                        'assets/images/kertas.png',
                        height: 130,
                        width: 130,
                      ),
                    ),
                    const Text(
                      'Apk Buku',
                      style: TextStyle(fontSize: 20.0),
                    )
                  ],
                )),
              ),
            ),
            Card(
              color: Color.fromARGB(255, 187, 209, 229),
              elevation: 15,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30)),
              margin: const EdgeInsets.only(left: 20.0, right: 20.0, top: 10.0),
              child: InkWell(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: ((context) {
                        return const apkkuis();
                      }),
                    ),
                  );
                },
                splashColor: Colors.blue,
                child: Center(
                    child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    ClipRRect(
                      borderRadius: BorderRadius.circular(50.0),
                      child: Image.asset(
                        'assets/images/quiz.png',
                        height: 110,
                        width: 110,
                      ),
                    ),
                    const Text(
                      'Apk Quiz',
                      style: TextStyle(fontSize: 20.0),
                    )
                  ],
                )),
              ),
            ),

            // margin: const EdgeInsets.all(8.0),
            // child: InkWell(
            //   onTap: () {
            //     Navigator.of(context).push(
            //       MaterialPageRoute(
            //         builder: ((context) {
            //           return const apkkuis();
            //         }),
            //       ),
            //     );
            //   },
            //   splashColor: Colors.green,
            //   child: Center(
            //     child:
            //         Column(mainAxisSize: MainAxisSize.min, children: <Widget>[
            //       Icon(
            //         Icons.quiz,
            //         size: 40.0,
            //         color: Colors.blue,
            //       ),
            //       Text(
            //         "Apk Kuesioner",
            //         style: new TextStyle(fontSize: 20.0),
            //       )
            //     ]),
            //   ),
            // ),

            // Card(
            //   margin: EdgeInsets.all(8.0),
            //   child: InkWell(
            //     onTap: () {
            //       Navigator.of(context).push(
            //         MaterialPageRoute(
            //           builder: ((context) {
            //             return const bmi();
            //           }),
            //         ),
            //       );
            //     },
            //     splashColor: Colors.green,
            //     child: Center(
            //       child:
            //           Column(mainAxisSize: MainAxisSize.min, children: <Widget>[
            //         Icon(
            //           Icons.calculate,
            //           size: 40.0,
            //           color: Colors.orange,
            //         ),
            //         Text(
            //           "BMI Kalkulator",
            //           style: new TextStyle(fontSize: 20.0),
            //         )
            //       ]),
            //     ),
            //   ),
            // ),
            // Card(
            //   margin: EdgeInsets.all(8.0),
            //   child: InkWell(
            //     onTap: () {
            //       Navigator.of(context).push(
            //         MaterialPageRoute(
            //           builder: ((context) {
            //             return const book();
            //           }),
            //         ),
            //       );
            //     },
            //     splashColor: Colors.green,
            //     child: Center(
            //       child:
            //           Column(mainAxisSize: MainAxisSize.min, children: <Widget>[
            //         Icon(
            //           Icons.menu_book,
            //           size: 40.0,
            //           color: Colors.brown,
            //         ),
            //         Text(
            //           "Apk Buku",
            //           style: new TextStyle(fontSize: 20.0),
            //         )
            //       ]),
            //     ),
            //   ),
            // ),
            // Card(
            //   margin: EdgeInsets.all(8.0),
            //   child: InkWell(
            //     onTap: () {
            //       Navigator.of(context).push(
            //         MaterialPageRoute(
            //           builder: ((context) {
            //             return uang();
            //           }),
            //         ),
            //       );
            //     },
            //     splashColor: Colors.blue,
            //     child: Center(
            //       child:
            //           Column(mainAxisSize: MainAxisSize.min, children: <Widget>[
            //         Icon(
            //           Icons.attach_money_outlined,
            //           size: 40.0,
            //           color: Colors.green,
            //         ),
            //         Text(
            //           "Apk Pengeluaran Pribadi",
            //           textAlign: TextAlign.center,
            //           style: new TextStyle(fontSize: 20.0),
            //         )
            //       ]),
            //     ),
            //   ),
            // ),
          ],
        ),
      ),
      drawer: Drawer(
        child: drawerItems,
      ),
      // bottomNavigationBar: CurvedNavigationBar(
      //     backgroundColor: const Color.fromARGB(255, 251, 252, 253),
      //     color: const Color.fromARGB(255, 9, 132, 214),
      //     items: const [
      //       Icon(Icons.home, color: Colors.white),
      //       Icon(Icons.add, color: Colors.white),
      //       Icon(
      //         Icons.person,
      //         color: Colors.white,
      //       ),
      //  ]
    );
    //  );
  }
}

//<void> means this route returns nothing.
// class _NewPage extends MaterialPageRoute<void> {
//   _NewPage(int id)
//       : super(
//           builder: (BuildContext context) {
//             return dash(
// appBar: AppBar(
//   title: Text('Page $id'),
//   elevation: 1.0,
// ),
// body: Center(
//   child: Text('Page $id'),
// ),
// );
// },
// );
//}
