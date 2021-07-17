import 'package:flutter/material.dart';
import 'package:onlinequiz_app/Login_page.dart';
import 'package:onlinequiz_app/signup_page.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'Quiz_categories.dart';

class HomePage extends StatefulWidget {
  static String id = "homePage";

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  FirebaseAuth auth = FirebaseAuth.instance;
  @override
  void initState() {
    super.initState();
  }

  void loggedIn() async {
    final loginUser = auth.currentUser;
    if (loginUser != null) {
      Navigator.pushNamed(context, QuizCategories.id);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          'QUODE',
        ),
        centerTitle: true,
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('picture/homepage.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 70.0,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              CircleAvatar(
                radius: 110.0,
                backgroundImage: AssetImage('logo/logo.png'),
              ),
              SizedBox(
                height: 40.0,
              ),
              Row(
                children: [
                  MaterialButton(
                    color: Colors.indigo,
                    minWidth: 250,
                    height: 50.0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    splashColor: Colors.white70,
                    elevation: 10.0,
                    onPressed: () {
                      Navigator.pushNamed(context, SIGNUP.id);
                    },
                    child: Text(
                      'SIGN UP',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 22.0,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 40.0,
              ),
              Row(
                children: [
                  MaterialButton(
                    minWidth: 250,
                    height: 50.0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    splashColor: Colors.white,
                    color: Colors.indigo,
                    elevation: 10.0,
                    onPressed: () {
                      Navigator.pushNamed(context, LoginPage.id);
                    },
                    child: Text(
                      'LOGIN',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 22.0,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
