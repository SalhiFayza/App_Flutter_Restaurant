import 'package:flutter/material.dart';
import 'package:ecommercecar/myrestaurants.dart';
import 'package:ecommercecar/profil.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(vsync: this, length: 2);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      //***********AppBar***********
      appBar: AppBar(
        title: Text(
          'Welcome in My Restaurant',
          style: TextStyle(
              color: Colors.amber, fontFamily: 'Montserrat', fontSize: 20),
        ),
        actions: <Widget>[
          Padding(
            padding: EdgeInsets.only(right: 10.0),
            child: IconButton(
              icon: Icon(
                Icons.account_circle,
                color: Colors.greenAccent,
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Profil()),
                );
              },
            ),
          )
        ],
        elevation: 0.0,
        backgroundColor: Colors.transparent,
      ),
      body: ListView(
        children: <Widget>[
          TabBar(
            controller: tabController,
            indicatorColor: Colors.transparent,
            labelColor: Colors.black,
            isScrollable: true,
            unselectedLabelColor: Color(0xFFB6BDC7),
            tabs: <Widget>[
              Tab(
                child: Text(
                  'My Restaurants',
                  style: TextStyle(
                    fontFamily: 'Montserrat',
                    fontSize: 20.0,
                  ),
                ),
              ),
              Tab(
                child: Text(
                  'My Wishlist',
                  style: TextStyle(
                    fontFamily: 'Montserrat',
                    fontSize: 20.0,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 10.0),
          Container(
              height: 900,
              child: TabBarView(
                controller: tabController,
                children: <Widget>[
                  new MyRestaurants(),
                  new MyRestaurants(),
                ],
              ))
        ],
      ),
    );
  }
}
