import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:onlinequiz_app/QuestionsCPageLevel1.dart';
import 'package:onlinequiz_app/QuestionsCPageLevel2.dart';
import 'package:onlinequiz_app/QuestionsCPageLevel3.dart';
import 'package:onlinequiz_app/QuestionsPythonpageLevel2.dart';
import 'home_page.dart';
import 'signup_page.dart';
import 'Quiz_categories.dart';
import 'Login_page.dart';
import 'QuestionsPythonPageLevel1.dart';
import 'QuestionsPythonpageLevel2.dart';
import 'QuestionsPythonPageLevel3.dart';
import 'QuestionsCPageLevel3.dart';
import 'QuestionsJavaPageLevel1.dart';
import 'QuestionsJavaPageLevel2.dart';
import 'QuestionsJavaPageLevel3.dart';
import 'QuestionsJavaScriptPageLevel1.dart';
import 'QuestionsJavaScriptPageLevel2.dart';
import 'QuestionsJavaScriptPageLevel3.dart';
import 'QuizsScore.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  SystemChrome.setEnabledSystemUIOverlays(
      [SystemUiOverlay.bottom, SystemUiOverlay.top]);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: Future.delayed(Duration(seconds: 3)),
      builder: (context, AsyncSnapshot snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return MaterialApp(home: SplashScreen());
        } else {
          return MaterialApp(
              debugShowCheckedModeBanner: false,
              home: HomePage(),
              initialRoute: HomePage.id,
              routes: {
                HomePage.id: (context) => HomePage(),
                SIGNUP.id: (context) => SIGNUP(),
                LoginPage.id: (context) => LoginPage(),
                QuizCategories.id: (context) => QuizCategories(),
                QuestionPythonPageLevel1.id: (context) =>
                    QuestionPythonPageLevel1(),
                QuestionPythonPageLevel2.id: (context) =>
                    QuestionPythonPageLevel2(),
                QuestionPythonPageLevel3.id: (context) =>
                    QuestionPythonPageLevel3(),
                QuestionCPageLevel1.id: (context) => QuestionCPageLevel1(),
                QuestionCPageLevel2.id: (context) => QuestionCPageLevel2(),
                QuestionCPageLevel3.id: (context) => QuestionCPageLevel3(),
                QuestionJavaPageLevel1.id: (context) =>
                    QuestionJavaPageLevel1(),
                QuestionJavaPageLevel2.id: (context) =>
                    QuestionJavaPageLevel2(),
                QuestionJavaPageLevel3.id: (context) =>
                    QuestionJavaPageLevel3(),
                QuestionJavaScriptPageLevel1.id: (context) =>
                    QuestionJavaScriptPageLevel1(),
                QuestionJavaScriptPageLevel2.id: (context) =>
                    QuestionJavaScriptPageLevel2(),
                QuestionJavaScriptPageLevel3.id: (context) =>
                    QuestionJavaScriptPageLevel3(),
                PythonQuizResultsLevel1.id: (context) =>
                    PythonQuizResultsLevel1(),
              });
        }
      },
    );
  }
}

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('picture/homepage.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Hero(
            tag: 'picture',
            child: CircleAvatar(
              radius: 150.0,
              backgroundImage: AssetImage('logo/logo.png'),
            ),
          ),
        ),
      ),
    );
  }
}
