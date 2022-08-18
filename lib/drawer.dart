import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:first_app/dash.dart';
import 'package:first_app/view/bmi_data_screen.dart';
import 'package:first_app/views/book_list_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(primaryColor: Colors.purple),
    debugShowCheckedModeBanner: false,
    home: dash(),
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
        backgroundColor: Colors.white,
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
        SizedBox(
          height: 10,
        ),
        drawerHeader,
        GestureDetector(
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: ((context) {
                  return dash();
                }),
              ),
            );
          },
          child: Container(
            alignment: Alignment.center,
            width: 250,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                gradient: LinearGradient(
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                    colors: [
                      Color.fromARGB(255, 151, 176, 202),
                      Color.fromARGB(255, 8, 191, 236),
                      Color.fromARGB(255, 151, 176, 202),
                    ])),
            child: Padding(
              padding: EdgeInsets.all(12.0),
              child: Text(
                'QUESIONER',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        GestureDetector(
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: ((context) {
                  return BmiDataScreen();
                }),
              ),
            );
          },
          child: Container(
            alignment: Alignment.center,
            width: 250,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                gradient: LinearGradient(
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                    colors: [
                      Color.fromARGB(255, 151, 182, 202),
                      Color.fromARGB(255, 8, 191, 236),
                      Color.fromARGB(255, 151, 176, 202),
                    ])),
            child: Padding(
              padding: EdgeInsets.all(12.0),
              child: Text(
                'BMI CALCULATOR',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        GestureDetector(
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: ((context) {
                  return BookListPage();
                }),
              ),
            );
          },
          child: Container(
            alignment: Alignment.center,
            width: 250,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                gradient: LinearGradient(
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                    colors: [
                      Color.fromARGB(255, 151, 176, 202),
                      Color.fromARGB(255, 8, 191, 236),
                      Color.fromARGB(255, 151, 176, 202),
                    ])),
            child: Padding(
              padding: EdgeInsets.all(12.0),
              child: Text(
                'BOOK APP',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ),

        //  ListTile(
        //  title: const Text('To page 1'),
        //  onTap: () => Navigator.of(context).push(dash() ),
        //  ),

        //   ListTile(
        //     title: const Text('To page 2'),
        //     onTap: () => Navigator.of(context).push(_NewPage(2)),
        //   ),
        //   ListTile(
        //     title: const Text('other drawer item'),
        //     onTap: () {},
        //
      ],
    );
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 251, 252, 253),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 9, 132, 214),
        title: const Text('Rebahan Academy'),
      ),
      body: const Center(
        child:
        Text('Sedang Dalam Perbaikan'),
      ),
      drawer: Drawer(
        child: drawerItems,
      ),
      bottomNavigationBar: CurvedNavigationBar(
          backgroundColor: Color.fromARGB(255, 251, 252, 253),
          color: Color.fromARGB(255, 9, 132, 214),
          items: [
            Icon(Icons.home, color: Colors.white),
            Icon(Icons.add, color: Colors.white),
            Icon(Icons.person,color: Colors.white,
            ),
          ]),
    );
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
