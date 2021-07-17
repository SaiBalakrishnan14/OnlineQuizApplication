import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:modal_progress_hud/modal_progress_hud.dart';
import 'package:onlinequiz_app/Quiz_categories.dart';
import 'signuploginpagetextfield.dart';

class LoginPage extends StatefulWidget {
  static String id = 'LoginPage';
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String emailId;
  String password;
  FirebaseAuth auth = FirebaseAuth.instance;
  bool loadState = false;

  @override
  void initState() {
    super.initState();
    loggedIn();
  }

  User userLogin;
  void loggedIn() {
    final loginUser = auth.currentUser;
    if (loginUser != null) {
      userLogin = loginUser;
      print(userLogin);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ModalProgressHUD(
        inAsyncCall: loadState,
        progressIndicator: CircularProgressIndicator(
          backgroundColor: Colors.indigo,
          strokeWidth: 5.0,
        ),
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('picture/signuppage.png'),
              fit: BoxFit.cover,
            ),
          ),
          child: Center(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.0),
              child: SizedBox(
                height: 630.0,
                child: Card(
                  color: Colors.white,
                  elevation: 5.0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  child: Container(
                    child: SingleChildScrollView(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(
                            height: 10.0,
                          ),
                          Hero(
                            tag: 'image',
                            child: CircleAvatar(
                              radius: 60.0,
                              backgroundImage: AssetImage('logo/logo.png'),
                            ),
                          ),
                          SizedBox(
                            height: 10.0,
                          ),
                          Text(
                            'LOGIN',
                            style: TextStyle(
                              color: Colors.indigo,
                              fontSize: 40.0,
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                          SizedBox(
                            height: 30.0,
                          ),
                          SignUpLoginPageTextField(
                            obscureText: false,
                            icon: Icon(
                              Icons.person,
                              color: Colors.indigo,
                              size: 35.0,
                            ),
                            hintText: 'Enter Username',
                          ),
                          SizedBox(
                            height: 50.0,
                          ),
                          SignUpLoginPageTextField(
                              obscureText: false,
                              icon: Icon(
                                Icons.email,
                                color: Colors.indigo,
                                size: 35.0,
                              ),
                              hintText: 'Enter your email id',
                              onChanged: (value) {
                                emailId = value;
                              }),
                          SizedBox(
                            height: 50.0,
                          ),
                          SignUpLoginPageTextField(
                            obscureText: true,
                            icon: Icon(
                              Icons.lock,
                              color: Colors.indigo,
                              size: 35.0,
                            ),
                            hintText: 'Enter password',
                            onChanged: (value) {
                              password = value;
                            },
                          ),
                          SizedBox(
                            height: 55.0,
                          ),
                          Flexible(
                            child: MaterialButton(
                              color: Colors.indigo,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              minWidth: 270.0,
                              height: 50.0,
                              elevation: 10.0,
                              onPressed: () async {
                                setState(() {
                                  loadState = true;
                                });
                                try {
                                  final user =
                                      await auth.signInWithEmailAndPassword(
                                          email: emailId, password: password);
                                  if (user != null) {
                                    Navigator.pushNamed(
                                        context, QuizCategories.id);
                                  }
                                } catch (e) {
                                  print(e);
                                }
                                setState(() {
                                  loadState = false;
                                });
                              },
                              child: Text(
                                'LOGIN',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20.0,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
