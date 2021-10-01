import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Profil extends StatefulWidget {
  @override
  _ProfilState createState() => _ProfilState();
}

class _ProfilState extends State<Profil> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Profile',
          style: TextStyle(color: Colors.grey, fontFamily: 'Montserrat'),
        ),
        leading: Icon(
          Icons.arrow_back_ios,
          color: Colors.grey,
        ),
        actions: <Widget>[
          Padding(
            padding: EdgeInsets.only(right: 10.0),
            child: Icon(
              Icons.edit,
              color: Colors.grey,
            ),
          )
        ],
        elevation: 0.0,
        backgroundColor: Colors.transparent,
      ),
      body: Center(
        child: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [Colors.green.shade50, Colors.green.shade100],
          )),
          child: ListView(children: <Widget>[
            Stack(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(top: 15.0),
                  child: Align(
                    alignment: Alignment.topCenter,
                    child: Container(
                      height: 100.0,
                      width: 100.0,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50.0),
                          image: DecorationImage(
                              image: AssetImage('assets/fayza.jpg'),
                              fit: BoxFit.cover)),
                    ),
                  ),
                ),
                Positioned(
                  left: 210.0,
                  top: 70.0,
                  child: Container(
                    height: 25.0,
                    width: 25.0,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12.5),
                        color: Colors.white),
                    child: Icon(
                      Icons.fastfood,
                      color: Colors.green,
                      size: 14.0,
                    ),
                  ),
                )
              ],
            ),
            Column(
              children: <Widget>[
                SizedBox(height: 20.0),
                Text(
                  'Salhi Fayza',
                  style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontSize: 20.0,
                      color: Colors.green),
                ),
                SizedBox(height: 10.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(Icons.location_on, color: Colors.red[300]),
                    Text(
                      'Kasserine-Tunisia',
                      style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontSize: 14.0,
                          color: Colors.grey),
                    )
                  ],
                )
              ],
            ),
            SizedBox(height: 15.0),
            Container(
              height: 100.0,
              width: double.infinity,
              color: Colors.grey.withOpacity(0.05),
              padding: EdgeInsets.only(top: 30.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Text(
                        '121k',
                        style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 17.0,
                            color: Colors.black),
                      ),
                      Text(
                        'Followers',
                        style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 16.0,
                            color: Colors.grey),
                      )
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Text(
                        '152',
                        style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 17.0,
                            color: Colors.black),
                      ),
                      Text(
                        'Following',
                        style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 16.0,
                            color: Colors.grey),
                      )
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Text(
                        '455',
                        style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 17.0,
                            color: Colors.black),
                      ),
                      Text(
                        'Taste Maker',
                        style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 16.0,
                            color: Colors.grey),
                      )
                    ],
                  )
                ],
              ),
            ),
            Padding(
                padding: EdgeInsets.all(20.0),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'Bio',
                        style: TextStyle(
                          fontSize: 22.0,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Text(
                        'My name is Fayza and I am a freelance mobile app developper.',
                        style: TextStyle(
                          fontSize: 19.0,
                          fontFamily: 'Montserrat',
                        ),
                      ),
                    ])),
            SizedBox(
              height: 5,
            ),
            Padding(
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: Card(
                    color: Colors.grey[200],
                    child: Center(
                        child: Row(children: <Widget>[
                      Icon(Icons.phone, color: Colors.red[300]),
                      SizedBox(
                        width: 20,
                      ),
                      Text(
                        'Num Phone Fix',
                        style: TextStyle(
                            color: Colors.black, fontFamily: 'Montserrat'),
                      ),
                      SizedBox(
                        height: 50,
                      ),
                    ])))),
            SizedBox(
              height: 5,
            ),
            Padding(
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: Card(
                    color: Colors.grey[200],
                    child: Center(
                        child: Row(children: <Widget>[
                      Icon(Icons.facebook, color: Colors.red[300]),
                      SizedBox(
                        width: 20,
                      ),
                      Text(
                        'Facebook',
                        style: TextStyle(
                            color: Colors.black, fontFamily: 'Montserrat'),
                      ),
                      SizedBox(
                        height: 50,
                      ),
                    ])))),
            Padding(
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: Card(
                    color: Colors.grey[200],
                    child: Center(
                        child: Row(children: <Widget>[
                      Icon(Icons.phone_android, color: Colors.red[300]),
                      SizedBox(
                        width: 20,
                      ),
                      Text(
                        'Num Phone',
                        style: TextStyle(
                            color: Colors.black, fontFamily: 'Montserrat'),
                      ),
                      SizedBox(
                        height: 50,
                      ),
                    ])))),
          ]),
        ),
      ),
    );
  }
}
