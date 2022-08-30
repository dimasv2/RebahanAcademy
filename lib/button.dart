// ignore_for_file: unused_import

import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:first_app/code/home_code.dart';
import 'package:first_app/dashboard.dart';
import 'package:first_app/home.dart';
import 'package:first_app/login.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

void main() {
  runApp(const dashboard());
}

class dashboard extends StatelessWidget {
  const dashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const drawerHeader = UserAccountsDrawerHeader(
      accountName: Text('Dimas Ramadan'),
      accountEmail: Text('dimasramadanv2@gmail.com'),
      currentAccountPicture: CircleAvatar(
        backgroundColor: Color.fromARGB(255, 247, 250, 251),
        child: FlutterLogo(size: 42.0),
      ),
    );
    final drawerItems = ListView(children: const <Widget>[
      drawerHeader,
    ]);
    ListTile(
        leading: const Icon(Icons.person),
        title: const Text('Profil'),
        onTap: () {} //=> Navigator.of(context).push(() ),
        );

    ListTile(
      leading: const Icon(Icons.vpn_key),
      title: const Text('Ubah Password'),
      onTap: () {}, //=> Navigator.of(context).push(_NewPage(2)),
    );
    ListTile(
      leading: const Icon(Icons.info),
      title: const Text('Tentang'),
      onTap: () {},
    );
    ListTile(
        leading: const Icon(Icons.logout),
        title: const Text('Keluar'),
        onTap: () {} //=> Navigator.of(context).push(() ),
        );

    return Scaffold(
      appBar: AppBar(),
      drawer: const Drawer(
          // child: drawerItems,
          ),
    );
    //   home: Scaffold(),
    // );
  }
}

class dashboards extends StatefulWidget {
  const dashboards({Key? key}) : super(key: key);

  @override
  State<dashboards> createState() => _dashboardsState();
}

class _dashboardsState extends State<dashboards> {
  final items = const [
    Icon(
      Icons.app_shortcut_outlined,
      color: Colors.white,
    ),
    Icon(
      Icons.home,
      color: Colors.white,
    ),
    Icon(
      Icons.code,
      color: Colors.white,
    ),
  ];

  int index = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('rebahans'),
      // ),
      bottomNavigationBar: CurvedNavigationBar(
        buttonBackgroundColor: Color.fromARGB(255, 23, 97, 171),
        backgroundColor: Colors.white,
        color: Color.fromARGB(255, 23, 97, 171),
        items: items,
        index: index,
        onTap: (selectedIndex) {
          setState(() {
            index = selectedIndex;
          });
        },
      ),
      body: Container(
        child: getSelectedWidget(index: index),
      ),
      // drawer: const Drawer(
      //     // child: drawerItems,
      //     ),
    );
  }
}

Widget getSelectedWidget({required int index}) {
  Widget widget;
  switch (index) {
    case 0:
      widget = const apk();
      break;
    case 1:
      widget = const drawer();
      break;
    default:
      widget = const apk_code();
      break;
  }
  return widget;
}
