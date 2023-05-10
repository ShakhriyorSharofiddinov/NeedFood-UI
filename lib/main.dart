import 'package:flutter/material.dart';
import 'package:needfood/const_page.dart';
import 'package:needfood/intro_page/information_page.dart';

import 'pages/home_page.dart';
import 'pages/login_page.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Need Food",
      theme: ThemeData(primarySwatch: Colors.blue),
      initialRoute: NAMES.InformationPage,
      routes: {
        NAMES.InformationPage: (context) => InformationPage(),
        NAMES.HomePage: (context) => HomePage(),
        NAMES.LoginPage: (context) => LoginPage(),
      },
    );
  }
}
