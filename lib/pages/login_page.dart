import 'package:flutter/material.dart';
import 'package:needfood/const_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                color: Color(0xFF35B6FF),
                height: 160,
                width: double.infinity,
                child:Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    SizedBox(
                      height: 62,
                      width: 62,
                      child: Image(
                        fit: BoxFit.cover,
                        image: AssetImage("assets/intro/burger1.png"),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 8, top: 30),
                      child: Text(
                        "NeedFood",
                        style: TextStyle(
                          fontSize: 34,
                          color: Colors.white,
                          letterSpacing: 1,
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              SizedBox(height: 80),

              Text(
                "Sign In",
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 2,
                ),
              ),

              SizedBox(height: 40),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 28),
                child: TextField(
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Color(0xFF35B6FF))
                    ),
                    label: Text("Email"),
                    filled: true,
                  ),
                ),
              ),

              SizedBox(height: 10),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 28),
                child: TextField(
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Color(0xFF35B6FF))
                    ),
                    label: Text("Password"),
                    filled: true,
                  ),
                ),
              ),

              SizedBox(height: 20),

              Text("Forgot password ?", style: TextStyle(letterSpacing: 1),),

              SizedBox(height: 30),

              GestureDetector(
                onTap: () {
                  Navigator.popAndPushNamed(context, NAMES.HomePage);
                },
                child: Container(
                    width: double.infinity,
                    padding: EdgeInsets.only(top: 8, bottom: 8),
                    margin: EdgeInsets.symmetric(horizontal: 28),
                    decoration: BoxDecoration(
                      color: Color(0xFF35B6FF),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Center(
                        child: Text(
                          "Login",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 24,
                            color: Colors.white,
                            letterSpacing: 1,
                          ),
                        ))
                ),
              ),

              SizedBox(height: 190),

              Text("Not account yet ?",
              style: TextStyle(
                letterSpacing: 1,
              ),),

              SizedBox(height: 4),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                      "Sign up now",
                    style: TextStyle(
                      color: Color(0xFF36A1EE),
                      letterSpacing: 1,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(width: 4),
                  Icon(
                    Icons.account_circle,
                    size: 18,
                    color: Color(0xFF36A1EE),
                  ),
                ],
              ),
            ],
          ),
        )
    );
  }
}
