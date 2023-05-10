import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {


  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Padding(
          padding: const EdgeInsets.only(left: 24),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: const [
              SizedBox(
                height: 40,
                width: 40,
                child: Image(
                  fit: BoxFit.cover,
                  image: AssetImage("assets/intro/burger1.png"),
                ),
              ),
              Text(
                "NeedFood",
                style: TextStyle(
                  color: Colors.black,

                  fontSize: 20,
                ),
              ),
            ],
          ),
        ),

      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 100,
              width: double.infinity,
              color: Colors.teal,
            ),
            Container(
              height: 100,
              width: double.infinity,
              color: Colors.teal,
            ),
            Container(
              height: 100,
              width: double.infinity,
              color: Colors.teal,
            ),
            Container(
              height: 100,
              width: double.infinity,
              color: Colors.teal,
            ),
            Container(
              height: 100,
              width: double.infinity,
              color: Colors.teal,
            ),
            Container(
              height: 100,
              width: double.infinity,
              color: Colors.teal,
            ),
            Container(
              height: 100,
              width: double.infinity,
              color: Colors.teal,
            ),
            Container(
              height: 100,
              width: double.infinity,
              color: Colors.teal,
            ),
            Container(
              height: 100,
              width: double.infinity,
              color: Colors.teal,
            ),
            Container(
              height: 100,
              width: double.infinity,
              color: Colors.teal,
            ),

          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.favorite),label: "Like"),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_cart),label: "Shop"),
          BottomNavigationBarItem(icon: Icon(Icons.account_circle),label: "Profile"),
        ],
        onTap: (value) {
          setState(() {
            _currentIndex = value;
          });
        },
      ),
    );
  }
}
