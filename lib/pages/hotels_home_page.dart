import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HotelsHomePage extends StatefulWidget {
  @override
  _HotelsHomePageState createState() => _HotelsHomePageState();
}

class _HotelsHomePageState extends State<HotelsHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // #header
            Container(
              width: double.infinity,
              height: 250,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/ic_hotel.jpg'),
                    fit: BoxFit.cover),
              ),
              child: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.bottomRight,
                    colors: [
                      Colors.black.withOpacity(0.9),
                      Colors.black.withOpacity(0.8),
                      Colors.black.withOpacity(0.6),
                      Colors.black.withOpacity(0.2)
                    ],
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      "Best Hotels Ever",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 32,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Container(
                      height: 45,
                      margin: EdgeInsets.symmetric(horizontal: 20),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(25),
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            prefixIcon: Icon(Icons.search_rounded),
                            hintText: "Search for hotel . . ."),
                      ),
                    ),
                    SizedBox(
                      height: 25,
                    )
                  ],
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
              padding: EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Business hotels",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    height: 200,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        itemList('assets/images/ic_hotel.jpg'),
                        itemList('assets/images/ic_hotel.jpg'),
                        itemList('assets/images/ic_hotel.jpg'),
                        itemList('assets/images/ic_hotel.jpg'),
                        itemList('assets/images/ic_hotel.jpg'),
                        itemList('assets/images/ic_hotel.jpg'),
                        itemList('assets/images/ic_hotel.jpg'),
                        itemList('assets/images/ic_hotel.jpg'),
                        itemList('assets/images/ic_hotel.jpg'),
                        itemList('assets/images/ic_hotel.jpg'),
                        itemList('assets/images/ic_hotel.jpg'),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    "Business hotels",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    height: 200,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        itemList('assets/images/ic_hotel.jpg'),
                        itemList('assets/images/ic_hotel.jpg'),
                        itemList('assets/images/ic_hotel.jpg'),
                        itemList('assets/images/ic_hotel.jpg'),
                        itemList('assets/images/ic_hotel.jpg'),
                        itemList('assets/images/ic_hotel.jpg'),
                        itemList('assets/images/ic_hotel.jpg'),
                        itemList('assets/images/ic_hotel.jpg'),
                        itemList('assets/images/ic_hotel.jpg'),
                        itemList('assets/images/ic_hotel.jpg'),
                        itemList('assets/images/ic_hotel.jpg'),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget itemList(String hotel) {
  return AspectRatio(
    aspectRatio: 1 / 1,
    child: Container(
      margin: EdgeInsets.only(right: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        image: DecorationImage(
          image: AssetImage(hotel),
          fit: BoxFit.cover,
        ),
      ),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          gradient: LinearGradient(
            begin: Alignment.bottomRight,
            colors: [
              Colors.black.withOpacity(0.8),
              Colors.black.withOpacity(0.6),
              Colors.black.withOpacity(0.4),
              Colors.black.withOpacity(0.2),
            ],
          ),
        ),
        child: Container(
          margin: EdgeInsets.only(bottom: 25, left: 15),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                "Hotel 1",
                style: TextStyle(color: Colors.white, fontSize: 22),
              ),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      child: Icon(
                        Icons.favorite,
                        color: Colors.red,
                      ),
                      margin: EdgeInsets.only(right: 15),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    ),
  );
}
