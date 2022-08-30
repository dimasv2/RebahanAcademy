import 'package:first_app/code/code_bmi.dart';
import 'package:first_app/code/code_book.dart';
import 'package:first_app/code/code_kuis.dart';
import 'package:first_app/code/code_meals.dart';
import 'package:first_app/code/code_shop.dart';
import 'package:first_app/code/code_uang.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class apk_code extends StatefulWidget {
  const apk_code({Key? key}) : super(key: key);

  @override
  State<apk_code> createState() => _apk_codeState();
}

class _apk_codeState extends State<apk_code> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'DOWNLOAD KODE APK',
        ),
        centerTitle: true,
        automaticallyImplyLeading: false,
      ),
      body: Container(
        padding: const EdgeInsets.all(10.0),
        child: GridView.count(
          crossAxisCount: 3,
          children: <Widget>[
            Card(
              color: Colors.white,
              elevation: 15,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30)),
              margin: const EdgeInsets.only(left: 20.0, right: 20.0, top: 10.0),
              child: InkWell(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: ((context) {
                        return const cbmi();
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
                        height: 70,
                        width: 70,
                      ),
                    ),
                    const Text(
                      'Apk BMI',
                      style: TextStyle(fontSize: 15.0),
                    )
                  ],
                )),
              ),
            ),
            Card(
              color: Colors.white,
              elevation: 15,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30)),
              margin: const EdgeInsets.only(left: 20.0, right: 20.0, top: 10.0),
              child: InkWell(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: ((context) {
                        return const cuang();
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
                        height: 70,
                        width: 70,
                      ),
                    ),
                    const Text(
                      'Apk Uang',
                      style: TextStyle(fontSize: 15.0),
                    )
                  ],
                )),
              ),
            ),
            Card(
              color: Colors.white,
              elevation: 15,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30)),
              margin: const EdgeInsets.only(left: 20.0, right: 20.0, top: 10.0),
              child: InkWell(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: ((context) {
                        return const cbook();
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
                        height: 80,
                        width: 80,
                      ),
                    ),
                    const Text(
                      'Apk Buku',
                      style: TextStyle(fontSize: 15.0),
                    )
                  ],
                )),
              ),
            ),
            Card(
              color: Colors.white,
              elevation: 15,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30)),
              margin: const EdgeInsets.only(left: 20.0, right: 20.0, top: 10.0),
              child: InkWell(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: ((context) {
                        return const capkkuis();
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
                        height: 60,
                        width: 60,
                      ),
                    ),
                    const Text(
                      'Apk Quiz',
                      style: TextStyle(fontSize: 15.0),
                    )
                  ],
                )),
              ),
            ),
            Card(
              color: Colors.white,
              elevation: 15,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30)),
              margin: const EdgeInsets.only(left: 20.0, right: 20.0, top: 10.0),
              child: InkWell(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: ((context) {
                        return const cmeals();
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
                        'assets/images/meals.png',
                        height: 60,
                        width: 60,
                      ),
                    ),
                    const Text(
                      'Apk Makanan',
                      style: TextStyle(fontSize: 14.0),
                    )
                  ],
                )),
              ),
            ),
            Card(
              color: Colors.white,
              elevation: 15,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30)),
              margin: const EdgeInsets.only(left: 20.0, right: 20.0, top: 10.0),
              child: InkWell(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: ((context) {
                        return const cshop();
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
                        'assets/images/shop.png',
                        height: 60,
                        width: 60,
                      ),
                    ),
                    const Text(
                      'Apk Belanja',
                      style: TextStyle(fontSize: 14.0),
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
