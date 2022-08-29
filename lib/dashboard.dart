import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:first_app/expensive/main.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(primaryColor: Colors.purple),
    debugShowCheckedModeBanner: false,
    home: MyApp(),
  ));
}

//int index = 2;

class drawer extends StatelessWidget {
  const drawer({Key? key}) : super(key: key);

  // static const kIcon = <Icon>[
  //   Icon(Icons.home),
  //   Icon(Icons.add),
  //   Icon(Icons.person),
  // ];
//int index = 2;
  @override
  Widget build(BuildContext context) {
    // final items = <Widget>[
    //   const Icon(Icons.home),
    //   const Icon(Icons.add),
    //   const Icon(Icons.person),
    // ];
    // int index = 2;
//return DefaultTabController(length:kIcons.length,

    const drawerHeader = UserAccountsDrawerHeader(
      accountName: Text('Selamat Datang,'),
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
        ListTile(
            leading: const Icon(
              Icons.share,
              color: Colors.blue,
            ),
            title: const Text('Bagikan'),
            onTap: () {} //=> Navigator.of(context).push(() ),
            ),
        ListTile(
          leading: const Icon(
            Icons.star,
            color: Colors.blue,
          ),
          title: const Text('Nilai Kami'),
          onTap: () {}, //=> Navigator.of(context).push(_NewPage(2)),
        ),
        ListTile(
          leading: const Icon(
            Icons.info,
            color: Colors.blue,
          ),
          title: const Text('Tentang'),
          onTap: () {},
        ),
        ListTile(
            leading: const Icon(
              Icons.logout,
              color: Colors.blue,
            ),
            title: const Text('Keluar'),
            onTap: () {} //=> Navigator.of(context).push(() ),
            ),
        ListTile(
            title: const Text(
              'Apk Versi 1.0.0',
              textAlign: TextAlign.center,
            ),
            onTap: () {} //=> Navigator.of(context).push(() ),
            ),
      ],
    );
    return Scaffold(
      backgroundColor: Colors.white,
      // ignore: prefer_const_constructors
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            // floating: false,
            //snap: false,
            pinned: true,
            //expandedHeight: 207,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset('assets/awan.png', fit: BoxFit.fill),
            ),
            // snap: true,
            centerTitle: true,
            title: Text("Appbar"),
            bottom: PreferredSize(
                child: SizedBox(), preferredSize: Size.fromHeight(200)),
          ),
          SliverList(
              delegate: SliverChildListDelegate([
            Container(
              height: 100,
              width: 100,
              color: Colors.purple,
            ),
            SizedBox(
              height: 100,
            ),
            Container(
              height: 100,
              width: 100,
              color: Colors.purple,
            ),
            SizedBox(
              height: 100,
            ),
            Container(
              height: 100,
              width: 100,
              color: Colors.purple,
            ),
            SizedBox(
              height: 100,
            ),
            Container(
              height: 100,
              width: 100,
              color: Colors.purple,
            ),
            SizedBox(
              height: 100,
            ),
            Container(
              height: 100,
              width: 100,
              color: Colors.purple,
            ),
            SizedBox(
              height: 100,
            ),
          ]))
        ],
      ),
      drawer: Drawer(
        child: drawerItems,
      ),
    );
  }
}
