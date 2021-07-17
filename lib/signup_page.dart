import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:modal_progress_hud/modal_progress_hud.dart';
import 'package:onlinequiz_app/Quiz_categories.dart';
import 'signuploginpagetextfield.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class SIGNUP extends StatefulWidget {
  static String id = "signUpPage";
  @override
  _SIGNUPState createState() => _SIGNUPState();
}

class _SIGNUPState extends State<SIGNUP> {
  FirebaseAuth auth = FirebaseAuth.instance;
  String emailId;
  String password;
  bool loadState = false;
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
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
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
                        Align(
                          alignment: Alignment.center,
                          child: Text(
                            'SIGNUP',
                            style: TextStyle(
                              color: Colors.indigo,
                              fontSize: 45.0,
                              fontWeight: FontWeight.w800,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        SizedBox(
                          height: 20.0,
                        ),
                        SignUpLoginPageTextField(
                          obscureText: false,
                          icon: Icon(
                            Icons.person,
                            color: Colors.indigo,
                            size: 35.0,
                          ),
                          hintText: 'Enter Username',
                          onChanged: (value) {},
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
                          onChanged: (value) {},
                        ),
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
                          onChanged: (value) {},
                        ),
                        SizedBox(
                          height: 15.0,
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 10.0),
                          child: Text(
                            '* Password must be of atleast 6 characters',
                            style: TextStyle(
                              color: Colors.red,
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        SizedBox(
                          height: 55.0,
                        ),
                        Flexible(
                          child: MaterialButton(
                            color: Colors.indigo,
                            minWidth: 270.0,
                            height: 50.0,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            splashColor: Colors.greenAccent,
                            elevation: 10.0,
                            onPressed: () async {
                              setState(() {
                                loadState = true;
                              });
                              try {
                                final user =
                                    await auth.createUserWithEmailAndPassword(
                                        email: emailId, password: password);
                                if (user != null) {
                                  Navigator.pushNamed(
                                      context, QuizCategories.id);
                                }
                              } catch (e) {
                                print(e);
                              }
                              loadState = false;
                            },
                            child: Text(
                              'SIGNUP',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20.0,
                                letterSpacing: 2.0,
                              ),
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
    );
  }
}
