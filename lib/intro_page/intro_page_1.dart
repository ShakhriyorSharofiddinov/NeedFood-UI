import 'package:flutter/material.dart';

class IntroPage1 extends StatelessWidget {
  const IntroPage1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 24, top: 16),
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
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16),
            const Padding(
              padding: const EdgeInsets.all(24.0),
              child: Image(
                  fit: BoxFit.cover,
                  image: AssetImage("assets/intro/food1.png"),
                ),
            ),
           const SizedBox(height: 40),
            const Padding(
              padding: EdgeInsets.only(left: 30.0),
              child: Text(
                  "Choose your favorite menu",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1,
                ),
              ),
            ),
            SizedBox(height: 10),
            const Padding(
              padding: EdgeInsets.only(left: 30.0),
              child: Text(
                  "There are many types of food\navailable here",
              style: TextStyle(
                fontSize: 16,
                letterSpacing: 1,
              ),),
            ),
          ],
        ),
      ),
    );
  }
}
