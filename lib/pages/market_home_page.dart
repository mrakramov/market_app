import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MarketHomePage extends StatefulWidget {
  @override
  _MarketHomePageState createState() => _MarketHomePageState();
}

class _MarketHomePageState extends State<MarketHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Cars",
          style: TextStyle(color: Colors.red, fontSize: 26),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        brightness: Brightness.light,
        actions: [
          IconButton(
            icon: Icon(
              Icons.notifications_none,
              color: Colors.red,
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(
              Icons.local_grocery_store_outlined,
              color: Colors.red,
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.fromLTRB(15, 5, 15, 5),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                height: 45,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    _categoryItem(true, "All"),
                    _categoryItem(false, "New"),
                    _categoryItem(false, "Popular"),
                    _categoryItem(false, "Best seller"),
                    _categoryItem(false, "Top review"),
                  ],
                ),
              ),
              SizedBox(
                height: 15,
              ),
              _makeMainItem('assets/images/ic_image.jpg'),
              _makeMainItem('assets/images/ic_image.jpg'),
              _makeMainItem('assets/images/ic_image.jpg'),
              _makeMainItem('assets/images/ic_image.jpg'),
              _makeMainItem('assets/images/ic_image.jpg'),
            ],
          ),
        ),
      ),
    );
  }

  Widget _categoryItem(bool type, String category) {
    return AspectRatio(
      aspectRatio: 2.2 / 1,
      child: Container(
        decoration: BoxDecoration(
          color: type ? Colors.red : Colors.transparent,
          borderRadius: BorderRadius.circular(50),
        ),
        child: Center(
          child: Text(
            category,
            style: TextStyle(
              color: type ? Colors.white : Colors.grey[800],
              fontSize: type ? 20 : 18,
            ),
          ),
        ),
      ),
    );
  }
}

Widget _makeMainItem(String image) {
  return Container(
    margin: EdgeInsets.only(top: 20),
    height: 250,
    width: double.infinity,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(20),
      boxShadow: [
        BoxShadow(
          color: Colors.grey,
          blurRadius: 10,
          offset: Offset(0, 10),
        ),
      ],
      image: DecorationImage(
        fit: BoxFit.cover,
        image: AssetImage(image),
      ),
    ),
    child: Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        gradient: LinearGradient(
          colors: [
            Colors.black.withOpacity(0.9),
            Colors.black.withOpacity(0.7),
            Colors.black.withOpacity(0.5),
            Colors.black.withOpacity(0.3),
          ],
          begin: Alignment.bottomRight,
        ),
      ),
      child: Container(
        padding: EdgeInsets.all(15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Row(
                  children: [
                    Text(
                      "Rolls Royce",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Electric",
                      style: TextStyle(
                          color: Colors.red[700],
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  "100 \$",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
            Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                color: Colors.red,
                shape: BoxShape.circle,
              ),
              child: Center(
                child: Icon(
                  Icons.favorite_border,
                  color: Colors.white,
                  size: 20,
                ),
              ),
            ),
          ],
        ),
      ),
    ),
  );
}
