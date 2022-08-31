import 'package:carousel_slider/carousel_slider.dart';
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
//  int _currentSelection = 1;

//   _selectedItem(int id) {
//     _currentSelection = id;
//     setState(() {});
//   }
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
      backgroundColor: const Color.fromARGB(255, 253, 252, 252),
      // ignore: prefer_const_constructors
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            // floating: false,
            //snap: false,
            pinned: false,
            //expandedHeight: 207,
            backgroundColor: const Color.fromARGB(255, 53, 60, 64),
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset('assets/awan1.png', fit: BoxFit.fill),
            ),
            // snap: true,
            centerTitle: true,
            // title: Text("Rebahan Academy"),

            bottom: const PreferredSize(
                child: const SizedBox(),
                preferredSize: const Size.fromHeight(150)),
          ),
          SliverList(
              delegate: SliverChildListDelegate([
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
              margin: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 238, 235, 235),
                  borderRadius: BorderRadius.circular(30)),
              // height: 100,
              // width: 100,
              //color: Colors.white,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Icon(Icons.search),
                  const Text('Search App'),
                  const Icon(Icons.settings),
                ],
              ),
            ),
            const SizedBox(
              height: 1,
            ),
            Container(
              child: ImageCarousel(context),
            ),

            // ListView(
            //   children: <Widget>[
            //     CarouselSlider(
            //       options: CarouselOptions(
            //         height: 180.0,
            //         enlargeCenterPage: true,
            //         autoPlay: true,
            //         aspectRatio: 16 / 9,
            //         autoPlayCurve: Curves.fastOutSlowIn,
            //         enableInfiniteScroll: true,
            //         autoPlayAnimationDuration: Duration(milliseconds: 800),
            //         viewportFraction: 0.8,
            //       ),
            //       items: null,
            //     )
            //   ],
            // ),

            Stack(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 16.0, bottom: 12.0),
                  child: Row(
                    children: [
                      InkWell(
                        onTap: () {},
                        child: const Text('Tahap 1'),
                      ),
                      const SizedBox(
                        width: 12.0,
                      ),
                      InkWell(
                        onTap: () {},
                        child: const Text('Tahap 2'),
                      ),
                      const SizedBox(
                        width: 12.0,
                      ),
                      InkWell(
                        onTap: () {},
                        child: const Text('Tahap 3'),
                      ),
                    ],
                  ),
                ),
                AnimatedPositioned(
                  duration: const Duration(milliseconds: 400),
                  curve: Curves.fastOutSlowIn,
                  left: 16.0,
                  bottom: 4.0,
                  child: Container(
                    width: 30.0,
                    height: 4.0,
                    decoration: ShapeDecoration(
                      shape: const StadiumBorder(),
                      color: Colors.orange[200],
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 100,
            ),
            Container(
              height: 100,
              width: 100,
              color: Colors.white,
            ),
            const SizedBox(
              height: 100,
            ),
            Container(
              height: 100,
              width: 100,
              color: Colors.white,
            ),
            const SizedBox(
              height: 100,
            ),
            Container(
              height: 100,
              width: 100,
              color: Colors.white,
            ),
            const SizedBox(
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

final List<String> listImages = [
  'assets/images/bmi.png',
  'assets/images/kertas.png',
  'assets/images/meals.png',
  'assets/images/shop.png',
  'assets/images/quiz.png',
  'assets/images/uang.png',
];

final List<Widget> imageSlider = listImages
    .map((item) => Container(
        color: Color.fromARGB(255, 247, 248, 248),
        margin: const EdgeInsets.all(5.0),
        child: ClipRRect(
          borderRadius: const BorderRadius.all(Radius.circular(8.0)),
          child: Stack(children: [
            Image.asset(
              item,
              fit: BoxFit.fill,
            ),
            Positioned(
                bottom: 0.0,
                left: 0.0,
                right: 0.0,
                child: Container(
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(colors: [
                      Color.fromARGB(255, 249, 249, 249),
                      Color.fromARGB(255, 242, 243, 244),
                    ], begin: Alignment.bottomCenter, end: Alignment.topCenter),
                  ),
                  padding: const EdgeInsets.symmetric(
                    vertical: 0.0,
                    horizontal: 0.0,
                  ),
                  child: const Text('',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 0.0,
                          fontWeight: FontWeight.bold)),
                )),
          ]),
        )))
    .toList();
ImageCarousel(BuildContext context) {
  return Container(
    padding: const EdgeInsets.all(5),
    color: Color.fromARGB(255, 243, 244, 245),
    height: 180,
    width: MediaQuery.of(context).size.width,
    child: CarouselSlider(
        items: imageSlider,
        options: CarouselOptions(
            height: 250,
            autoPlay: true,
            autoPlayInterval: Duration(seconds: 2),
            autoPlayAnimationDuration: Duration(milliseconds: 1000),
            autoPlayCurve: Curves.fastOutSlowIn,
            enlargeCenterPage: true,
            initialPage: 2,
            aspectRatio: 2.0)),
  );
}
