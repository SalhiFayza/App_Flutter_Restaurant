import 'package:flutter/material.dart';

class MyRestaurants extends StatefulWidget {
  @override
  _MyRestaurantsState createState() => _MyRestaurantsState();
}

class _MyRestaurantsState extends State<MyRestaurants> {
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      primary: false,
      padding: EdgeInsets.all(10.0),
      crossAxisSpacing: 12.0,
      mainAxisSpacing: 12.0,
      shrinkWrap: true,
      children: <Widget>[
        _buildCard(
            'Burger', 'Greyish day', '21-09-29', '5', 'assets/burger.png'),
        _buildCard('Pizza', 'Portugecis', '21-09-29', '4', 'assets/pizza.png'),
        _buildCard(
            'Salad', 'States Dishes', '21-09-29', '5', 'assets/salad.png'),
        _buildCard('Sushi', 'Costa Rica', '21-09-29', '3', 'assets/sushi.png'),
        _buildCard('Tropical fruits', 'Greyish day', '21-05-18', '5',
            'assets/tropic.jpg'),
        _buildCard('Orange fruits', 'Portugecis', '21-05-18', '4',
            'assets/oranges.jpg'),
        _buildCard('Springfield', 'States Dishes', '21-05-18', '5',
            'assets/berries.jpg'),
        _buildCard('Breakfast Dine', 'Costa Rica', '21-05-18', '3',
            'assets/almonds.jpg'),
      ],
    );
  }

  _buildCard(String restaurantName, String type, String date, String rating,
      String imgPath) {
    return Container(
      padding: EdgeInsets.all(7.0),
      height: 150.0,
      width: 150.0,
      decoration: BoxDecoration(color: Colors.green[50], boxShadow: [
        BoxShadow(
            blurRadius: 3.0,
            spreadRadius: 3.0,
            color: Colors.grey.withOpacity(0.2))
      ]),
      child: Column(
        children: <Widget>[
          Stack(
            children: <Widget>[
              Container(
                height: 100.0,
                width: 140.0,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(imgPath), fit: BoxFit.cover)),
              ),
              Positioned(
                top: 60.0,
                left: 100.0,
                child: Container(
                    height: 25.0,
                    width: 25.0,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12.5),
                        color: Colors.white),
                    child: Row(
                      children: <Widget>[
                        SizedBox(width: 4.0),
                        Text(
                          rating,
                          style: TextStyle(color: Colors.amber, fontSize: 11.0),
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.amber,
                          size: 11.0,
                        )
                      ],
                    )),
              )
            ],
          ),
          SizedBox(height: 10.0),
          Text(
            restaurantName,
            style:
                TextStyle(color: Color(0xFF233467), fontFamily: 'Montserrat'),
          ),
          SizedBox(height: 10.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Text(
                type,
                style: TextStyle(
                    color: Colors.black,
                    fontFamily: 'Montserrat',
                    fontSize: 15.0),
              ),
              Text(
                date,
                style: TextStyle(
                    color: Colors.black,
                    fontFamily: 'Montserrat',
                    fontSize: 15.0),
              ),
            ],
          )
        ],
      ),
    );
  }
}
