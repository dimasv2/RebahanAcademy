import 'package:first_app/dash_board.dart';
import 'package:first_app/view_app/apk_bmi.dart';
import 'package:first_app/view_app/apk_book.dart';
import 'package:first_app/view_app/apk_kuis.dart';
import 'package:first_app/view_app/apk_uang.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class apk extends StatefulWidget {
  const apk({Key? key}) : super(key: key);

  @override
  State<apk> createState() => _apkState();
}

class _apkState extends State<apk> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('JALANKAN APK REBAHAN ACADEMY'),
        centerTitle: true,
        automaticallyImplyLeading: false,
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
          ],
        ),
      ),
    );
  }
}
