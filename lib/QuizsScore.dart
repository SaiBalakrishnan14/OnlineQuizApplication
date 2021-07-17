import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:onlinequiz_app/QuestionsCPageLevel1.dart';
import 'package:onlinequiz_app/QuestionsCPageLevel3.dart';
import 'package:onlinequiz_app/QuestionsJavaPageLevel1.dart';
import 'package:onlinequiz_app/QuestionsJavaPageLevel2.dart';
import 'package:onlinequiz_app/QuestionsJavaPageLevel3.dart';
import 'package:onlinequiz_app/Quiz_categories.dart';
import 'QuestionsPythonPageLevel1.dart';
import 'QuestionsJavaScriptPageLevel2.dart';
import 'QuestionsPythonpageLevel2.dart';
import 'QuestionsPythonPageLevel3.dart';
import 'QuestionsCPageLevel1.dart';
import 'QuestionsCPageLevel2.dart';
import 'QuestionsCPageLevel3.dart';
import 'QuestionsJavaPageLevel1.dart';
import 'QuestionsJavaPageLevel2.dart';
import 'QuestionsJavaScriptPageLevel1.dart';
import 'QuestionsJavaScriptPageLevel3.dart';
import 'QuestionsPython.dart';

enum RadioButtonState {
  RadioButton1,
  RadioButton2,
  RadioButton3,
  RadioButton4,
  none
}
int popCount = 0;

class PythonQuizResultsLevel1 extends StatefulWidget {
  PythonQuizResultsLevel1({@required this.score});
  int score;
  static String id = 'PythonQuizScoreLevel1';
  RadioButtonState radioButtonState = RadioButtonState.RadioButton1;
  @override
  _PythonQuizResultsLevel1State createState() =>
      _PythonQuizResultsLevel1State();
}

class _PythonQuizResultsLevel1State extends State<PythonQuizResultsLevel1> {
  QuestionPythonPageLevel1 questionPythonPageLevel1 =
      QuestionPythonPageLevel1();
  QuestionsPythonLevel1List questionsPythonLevel1List =
      QuestionsPythonLevel1List();
  String checkLevelPromotion() {
    if (widget.score >= 8) {
      return ('Congratulations.You are promoted to the next level!');
    } else {
      return ('OOPS! Insufficient score. Try again!');
    }
  }

  void dispose() {
    super.dispose();
    widget.radioButtonState = null;
    widget.score = 0;
  }

  bool buttonState = true;
  bool enableLevel() {
    if (widget.score >= 8) {
      return buttonState = true;
    } else {
      return buttonState = false;
    }
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark(),
        home: Scaffold(
          body: Center(
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Your Score',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 50.0,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  SizedBox(
                    height: 30.0,
                  ),
                  Text(
                    widget.score.toString() + '/10',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 35.0,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Text(
                    checkLevelPromotion(),
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 30.0,
                        fontWeight: FontWeight.w700),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: 80.0,
                  ),
                  Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 30.0),
                        child: SizedBox(
                          height: 50.0,
                          width: 150.0,
                          child: ElevatedButton(
                              style: ButtonStyle(
                                shape: MaterialStateProperty.all(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                ),
                                backgroundColor:
                                    MaterialStateProperty.all(Colors.indigo),
                              ),
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.keyboard_arrow_left,
                                    size: 25.0,
                                  ),
                                  SizedBox(
                                    width: 5.0,
                                  ),
                                  Text(
                                    'Try again',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                ],
                              ),
                              onPressed: () {
                                widget.radioButtonState = null;
                                Navigator.pushAndRemoveUntil(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          QuestionPythonPageLevel1(),
                                    ),
                                    (route) => false);
                              }),
                        ),
                      ),
                      SizedBox(
                        width: 70.0,
                      ),
                      SizedBox(
                        height: 50.0,
                        width: 130.0,
                        child: ElevatedButton(
                          style: ButtonStyle(
                            shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                            ),
                            backgroundColor: enableLevel()
                                ? MaterialStateProperty.all(
                                    Colors.indigo,
                                  )
                                : MaterialStateProperty.all(Colors.white),
                          ),
                          child: Row(
                            children: [
                              Text(
                                'Level 2',
                                style: TextStyle(
                                  color: enableLevel()
                                      ? Colors.white
                                      : Colors.black,
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.bold,
                                ),
                                textAlign: TextAlign.center,
                              ),
                              SizedBox(
                                width: 5.0,
                              ),
                              Icon(
                                Icons.keyboard_arrow_right,
                                size: 25.0,
                                color:
                                    enableLevel() ? Colors.white : Colors.black,
                              )
                            ],
                          ),
                          onPressed: enableLevel()
                              ? () => Navigator.pushNamed(
                                  context, QuestionPythonPageLevel2.id)
                              : null,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class PythonQuizResultsLevel2 extends StatefulWidget {
  PythonQuizResultsLevel2({@required this.score});
  int score;
  static String id = 'PythonQuizScoreLevel2';
  RadioButtonState radioButtonState = RadioButtonState.RadioButton1;
  @override
  _PythonQuizResultsLevel2State createState() =>
      _PythonQuizResultsLevel2State();
}

class _PythonQuizResultsLevel2State extends State<PythonQuizResultsLevel2> {
  QuestionPythonPageLevel2 questionPythonPageLevel2 =
      QuestionPythonPageLevel2();
  String checkLevelPromotion() {
    if (widget.score >= 8) {
      return ('Congratulations.You are promoted to the next level!');
    } else {
      return ('OOPS! Insufficient score. Try again!');
    }
  }

  void dispose() {
    super.dispose();
    widget.radioButtonState = null;
  }

  bool buttonState = true;
  bool enableLevel() {
    if (widget.score >= 8) {
      return buttonState = true;
    } else {
      return buttonState = false;
    }
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark(),
        home: Scaffold(
          body: Center(
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Your Score',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 50.0,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  SizedBox(
                    height: 30.0,
                  ),
                  Text(
                    widget.score.toString() + '/10',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 35.0,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Text(
                    checkLevelPromotion(),
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 30.0,
                        fontWeight: FontWeight.w700),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: 80.0,
                  ),
                  Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 30.0),
                        child: SizedBox(
                          height: 50.0,
                          width: 150.0,
                          child: ElevatedButton(
                              style: ButtonStyle(
                                shape: MaterialStateProperty.all(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                ),
                                backgroundColor:
                                    MaterialStateProperty.all(Colors.indigo),
                              ),
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.keyboard_arrow_left,
                                    size: 25.0,
                                  ),
                                  SizedBox(
                                    width: 5.0,
                                  ),
                                  Text(
                                    'Try again',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                ],
                              ),
                              onPressed: () {
                                widget.radioButtonState = null;
                                Navigator.pushAndRemoveUntil(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          QuestionPythonPageLevel2(),
                                    ),
                                    (route) => false);
                              }),
                        ),
                      ),
                      SizedBox(
                        width: 70.0,
                      ),
                      SizedBox(
                        height: 50.0,
                        width: 130.0,
                        child: ElevatedButton(
                          style: ButtonStyle(
                            shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                            ),
                            backgroundColor: enableLevel()
                                ? MaterialStateProperty.all(
                                    Colors.indigo,
                                  )
                                : MaterialStateProperty.all(Colors.white),
                          ),
                          child: Row(
                            children: [
                              Text(
                                'Level 3',
                                style: TextStyle(
                                  color: enableLevel()
                                      ? Colors.white
                                      : Colors.black,
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.bold,
                                ),
                                textAlign: TextAlign.center,
                              ),
                              SizedBox(
                                width: 5.0,
                              ),
                              Icon(
                                Icons.keyboard_arrow_right,
                                size: 25.0,
                                color:
                                    enableLevel() ? Colors.white : Colors.black,
                              )
                            ],
                          ),
                          onPressed: enableLevel()
                              ? () => Navigator.pushNamed(
                                  context, QuestionPythonPageLevel3.id)
                              : null,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class PythonQuizResultsLevel3 extends StatefulWidget {
  PythonQuizResultsLevel3({@required this.score});
  int score;
  static String id = 'PythonQuizScoreLevel3';
  RadioButtonState radioButtonState = RadioButtonState.RadioButton1;
  @override
  _PythonQuizResultsLevel3State createState() =>
      _PythonQuizResultsLevel3State();
}

class _PythonQuizResultsLevel3State extends State<PythonQuizResultsLevel3> {
  QuestionPythonPageLevel3 questionPythonPageLevel3 =
      QuestionPythonPageLevel3();
  String checkLevelPromotion() {
    if (widget.score >= 8) {
      return ('Congratulations.You are promoted to the next level!');
    } else {
      return ('OOPS! Insufficient score. Try again!');
    }
  }

  void dispose() {
    super.dispose();
    widget.radioButtonState = null;
  }

  bool buttonState = true;
  bool enableLevel() {
    if (widget.score >= 8) {
      return buttonState = true;
    } else {
      return buttonState = false;
    }
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark(),
        home: Scaffold(
          body: Center(
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Your Score',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 50.0,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  SizedBox(
                    height: 30.0,
                  ),
                  Text(
                    widget.score.toString() + '/10',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 35.0,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Text(
                    'Congratulations!You have completed all the levels successfully',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 30.0,
                        fontWeight: FontWeight.w700),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: 80.0,
                  ),
                  Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 30.0),
                        child: SizedBox(
                          height: 50.0,
                          width: 150.0,
                          child: ElevatedButton(
                              style: ButtonStyle(
                                shape: MaterialStateProperty.all(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                ),
                                backgroundColor:
                                    MaterialStateProperty.all(Colors.indigo),
                              ),
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.keyboard_arrow_left,
                                    size: 25.0,
                                  ),
                                  SizedBox(
                                    width: 5.0,
                                  ),
                                  Text(
                                    'Try again',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                ],
                              ),
                              onPressed: () {
                                widget.radioButtonState = null;
                                Navigator.pushAndRemoveUntil(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => QuizCategories(),
                                    ),
                                    (route) => false);
                              }),
                        ),
                      ),
                      SizedBox(
                        width: 50.0,
                      ),
                      SizedBox(
                        height: 50.0,
                        width: 150.0,
                        child: ElevatedButton(
                          style: ButtonStyle(
                            shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                            ),
                            backgroundColor:
                                MaterialStateProperty.all(Colors.indigo),
                          ),
                          child: Row(
                            children: [
                              Text(
                                'Categories',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 17.0,
                                  fontWeight: FontWeight.bold,
                                ),
                                textAlign: TextAlign.center,
                              ),
                              SizedBox(
                                width: 5.0,
                              ),
                              Icon(
                                Icons.keyboard_arrow_right,
                                size: 25.0,
                                color: Colors.white,
                              )
                            ],
                          ),
                          onPressed: enableLevel()
                              ? () => Navigator.pushNamed(
                                  context, QuizCategories.id)
                              : null,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class CQuizResultsLevel1 extends StatefulWidget {
  CQuizResultsLevel1({@required this.score});
  int score;
  static String id = 'CQuizScorelevel1';
  RadioButtonState radioButtonState = RadioButtonState.RadioButton1;
  @override
  _CQuizResultsLevel1State createState() => _CQuizResultsLevel1State();
}

class _CQuizResultsLevel1State extends State<CQuizResultsLevel1> {
  QuestionCPageLevel1 questionCPageLevel1 = QuestionCPageLevel1();
  String checkLevelPromotion() {
    if (widget.score >= 8) {
      return ('Congratulations.You are promoted to the next level!');
    } else {
      return ('OOPS! Insufficient score. Try again!');
    }
  }

  @override
  void dispose() {
    super.dispose();
    widget.radioButtonState = null;
  }

  bool buttonState = true;
  bool enableLevel() {
    if (widget.score >= 8) {
      return buttonState = true;
    } else {
      return buttonState = false;
    }
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark(),
        home: Scaffold(
          body: Center(
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Your Score',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 50.0,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  SizedBox(
                    height: 30.0,
                  ),
                  Text(
                    widget.score.toString() + '/10',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 35.0,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Text(
                    checkLevelPromotion(),
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 30.0,
                        fontWeight: FontWeight.w700),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: 80.0,
                  ),
                  Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 30.0),
                        child: SizedBox(
                          height: 50.0,
                          width: 150.0,
                          child: ElevatedButton(
                              style: ButtonStyle(
                                shape: MaterialStateProperty.all(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                ),
                                backgroundColor:
                                    MaterialStateProperty.all(Colors.indigo),
                              ),
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.keyboard_arrow_left,
                                    size: 25.0,
                                  ),
                                  SizedBox(
                                    width: 5.0,
                                  ),
                                  Text(
                                    'Try again',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                ],
                              ),
                              onPressed: () {
                                widget.radioButtonState = null;
                                Navigator.pushAndRemoveUntil(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          QuestionCPageLevel1(),
                                    ),
                                    (route) => false);
                              }),
                        ),
                      ),
                      SizedBox(
                        width: 70.0,
                      ),
                      SizedBox(
                        height: 50.0,
                        width: 130.0,
                        child: ElevatedButton(
                          style: ButtonStyle(
                            shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                            ),
                            backgroundColor: enableLevel()
                                ? MaterialStateProperty.all(
                                    Colors.indigo,
                                  )
                                : MaterialStateProperty.all(Colors.white),
                          ),
                          child: Row(
                            children: [
                              Text(
                                'Level 2',
                                style: TextStyle(
                                  color: enableLevel()
                                      ? Colors.white
                                      : Colors.black,
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.bold,
                                ),
                                textAlign: TextAlign.center,
                              ),
                              SizedBox(
                                width: 5.0,
                              ),
                              Icon(
                                Icons.keyboard_arrow_right,
                                size: 25.0,
                                color:
                                    enableLevel() ? Colors.white : Colors.black,
                              )
                            ],
                          ),
                          onPressed: enableLevel()
                              ? () => Navigator.pushNamed(
                                  context, QuestionCPageLevel2.id)
                              : null,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class CQuizResultsLevel2 extends StatefulWidget {
  CQuizResultsLevel2({@required this.score});
  int score;
  static String id = 'CQuizScoreLevel2';
  RadioButtonState radioButtonState = RadioButtonState.RadioButton1;
  @override
  _CQuizResultsLevel2State createState() => _CQuizResultsLevel2State();
}

class _CQuizResultsLevel2State extends State<CQuizResultsLevel2> {
  QuestionCPageLevel2 questionCPageLevel2 = QuestionCPageLevel2();
  String checkLevelPromotion() {
    if (widget.score >= 8) {
      return ('Congratulations.You are promoted to the next level!');
    } else {
      return ('OOPS! Insufficient score. Try again!');
    }
  }

  void dispose() {
    super.dispose();
    widget.radioButtonState = null;
  }

  bool buttonState = true;
  bool enableLevel() {
    if (widget.score >= 8) {
      return buttonState = true;
    } else {
      return buttonState = false;
    }
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark(),
        home: Scaffold(
          body: Center(
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Your Score',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 50.0,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  SizedBox(
                    height: 30.0,
                  ),
                  Text(
                    widget.score.toString() + '/10',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 35.0,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Text(
                    checkLevelPromotion(),
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 30.0,
                        fontWeight: FontWeight.w700),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: 80.0,
                  ),
                  Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 30.0),
                        child: SizedBox(
                          height: 50.0,
                          width: 150.0,
                          child: ElevatedButton(
                              style: ButtonStyle(
                                shape: MaterialStateProperty.all(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                ),
                                backgroundColor:
                                    MaterialStateProperty.all(Colors.indigo),
                              ),
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.keyboard_arrow_left,
                                    size: 25.0,
                                  ),
                                  SizedBox(
                                    width: 5.0,
                                  ),
                                  Text(
                                    'Try again',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                ],
                              ),
                              onPressed: () {
                                widget.radioButtonState = null;
                                Navigator.pushAndRemoveUntil(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          QuestionCPageLevel2(),
                                    ),
                                    (route) => false);
                              }),
                        ),
                      ),
                      SizedBox(
                        width: 70.0,
                      ),
                      SizedBox(
                        height: 50.0,
                        width: 130.0,
                        child: ElevatedButton(
                          style: ButtonStyle(
                            shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                            ),
                            backgroundColor: enableLevel()
                                ? MaterialStateProperty.all(
                                    Colors.indigo,
                                  )
                                : MaterialStateProperty.all(Colors.white),
                          ),
                          child: Row(
                            children: [
                              Text(
                                'Level 3',
                                style: TextStyle(
                                  color: enableLevel()
                                      ? Colors.white
                                      : Colors.black,
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.bold,
                                ),
                                textAlign: TextAlign.center,
                              ),
                              SizedBox(
                                width: 5.0,
                              ),
                              Icon(
                                Icons.keyboard_arrow_right,
                                size: 25.0,
                                color:
                                    enableLevel() ? Colors.white : Colors.black,
                              )
                            ],
                          ),
                          onPressed: enableLevel()
                              ? () => Navigator.pushNamed(
                                  context, QuestionCPageLevel3.id)
                              : null,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class CQuizResultsLevel3 extends StatefulWidget {
  CQuizResultsLevel3({@required this.score});
  int score;
  static String id = 'CQuizScoreLevel3';
  RadioButtonState radioButtonState = RadioButtonState.RadioButton1;
  @override
  _CQuizResultsLevel3State createState() => _CQuizResultsLevel3State();
}

class _CQuizResultsLevel3State extends State<CQuizResultsLevel3> {
  QuestionPythonPageLevel3 questionPythonPageLevel3 =
      QuestionPythonPageLevel3();
  String checkLevelPromotion() {
    if (widget.score >= 8) {
      return ('Congratulations.You are promoted to the next level!');
    } else {
      return ('OOPS! Insufficient score. Try again!');
    }
  }

  void dispose() {
    super.dispose();
    widget.radioButtonState = null;
  }

  bool buttonState = true;
  bool enableLevel() {
    if (widget.score >= 8) {
      return buttonState = true;
    } else {
      return buttonState = false;
    }
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark(),
        home: Scaffold(
          body: Center(
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Your Score',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 50.0,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  SizedBox(
                    height: 30.0,
                  ),
                  Text(
                    widget.score.toString() + '/10',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 35.0,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Text(
                    checkLevelPromotion(),
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 30.0,
                        fontWeight: FontWeight.w700),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: 80.0,
                  ),
                  Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 30.0),
                        child: SizedBox(
                          height: 50.0,
                          width: 150.0,
                          child: ElevatedButton(
                              style: ButtonStyle(
                                shape: MaterialStateProperty.all(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                ),
                                backgroundColor:
                                    MaterialStateProperty.all(Colors.indigo),
                              ),
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.keyboard_arrow_left,
                                    size: 25.0,
                                  ),
                                  SizedBox(
                                    width: 5.0,
                                  ),
                                  Text(
                                    'Try again',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                ],
                              ),
                              onPressed: () {
                                widget.radioButtonState = null;
                                Navigator.pushAndRemoveUntil(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          QuestionCPageLevel2(),
                                    ),
                                    (route) => false);
                              }),
                        ),
                      ),
                      SizedBox(
                        width: 60.0,
                      ),
                      SizedBox(
                        height: 50.0,
                        width: 150.0,
                        child: ElevatedButton(
                          style: ButtonStyle(
                            shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                            ),
                            backgroundColor:
                                MaterialStateProperty.all(Colors.indigo),
                          ),
                          child: Row(
                            children: [
                              Text(
                                'Categories',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 17.0,
                                  fontWeight: FontWeight.bold,
                                ),
                                textAlign: TextAlign.center,
                              ),
                              SizedBox(
                                width: 5.0,
                              ),
                              Icon(
                                Icons.keyboard_arrow_right,
                                size: 25.0,
                                color: Colors.white,
                              )
                            ],
                          ),
                          onPressed: enableLevel()
                              ? () => Navigator.pushNamed(
                                  context, QuizCategories.id)
                              : null,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class JavaQuizResultsLevel1 extends StatefulWidget {
  JavaQuizResultsLevel1({@required this.score});
  int score;
  static String id = 'JavaQuizScoreLevel1';
  RadioButtonState radioButtonState = RadioButtonState.RadioButton1;
  @override
  _JavaQuizResultsLevel1State createState() => _JavaQuizResultsLevel1State();
}

class _JavaQuizResultsLevel1State extends State<JavaQuizResultsLevel1> {
  QuestionJavaPageLevel1 questionJavaPageLevel1 = QuestionJavaPageLevel1();
  String checkLevelPromotion() {
    if (widget.score >= 8) {
      return ('Congratulations.You are promoted to the next level!');
    } else {
      return ('OOPS! Insufficient score. Try again!');
    }
  }

  @override
  void dispose() {
    super.dispose();
    widget.radioButtonState = null;
  }

  bool buttonState = true;
  bool enableLevel() {
    if (widget.score >= 8) {
      return buttonState = true;
    } else {
      return buttonState = false;
    }
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark(),
        home: Scaffold(
          body: Center(
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Your Score',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 50.0,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  SizedBox(
                    height: 30.0,
                  ),
                  Text(
                    widget.score.toString() + '/10',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 35.0,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Text(
                    checkLevelPromotion(),
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 30.0,
                        fontWeight: FontWeight.w700),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: 80.0,
                  ),
                  Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 30.0),
                        child: SizedBox(
                          height: 50.0,
                          width: 150.0,
                          child: ElevatedButton(
                              style: ButtonStyle(
                                shape: MaterialStateProperty.all(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                ),
                                backgroundColor:
                                    MaterialStateProperty.all(Colors.indigo),
                              ),
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.keyboard_arrow_left,
                                    size: 25.0,
                                  ),
                                  SizedBox(
                                    width: 5.0,
                                  ),
                                  Text(
                                    'Try again',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                ],
                              ),
                              onPressed: () {
                                widget.radioButtonState = null;
                                Navigator.pushAndRemoveUntil(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          QuestionJavaPageLevel1(),
                                    ),
                                    (route) => false);
                              }),
                        ),
                      ),
                      SizedBox(
                        width: 70.0,
                      ),
                      SizedBox(
                        height: 50.0,
                        width: 130.0,
                        child: ElevatedButton(
                          style: ButtonStyle(
                            shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                            ),
                            backgroundColor: enableLevel()
                                ? MaterialStateProperty.all(
                                    Colors.indigo,
                                  )
                                : MaterialStateProperty.all(Colors.white),
                          ),
                          child: Row(
                            children: [
                              Text(
                                'Level 2',
                                style: TextStyle(
                                  color: enableLevel()
                                      ? Colors.white
                                      : Colors.black,
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.bold,
                                ),
                                textAlign: TextAlign.center,
                              ),
                              SizedBox(
                                width: 5.0,
                              ),
                              Icon(
                                Icons.keyboard_arrow_right,
                                size: 25.0,
                                color:
                                    enableLevel() ? Colors.white : Colors.black,
                              )
                            ],
                          ),
                          onPressed: enableLevel()
                              ? () => Navigator.pushNamed(
                                  context, QuestionJavaPageLevel2.id)
                              : null,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class JavaQuizResultsLevel2 extends StatefulWidget {
  JavaQuizResultsLevel2({@required this.score});
  int score;
  static String id = 'JavaQuizScoreLevel2';
  RadioButtonState radioButtonState = RadioButtonState.RadioButton1;
  @override
  _JavaQuizResultsLevel2State createState() => _JavaQuizResultsLevel2State();
}

class _JavaQuizResultsLevel2State extends State<JavaQuizResultsLevel2> {
  QuestionJavaPageLevel2 questionJavaPageLevel2 = QuestionJavaPageLevel2();
  String checkLevelPromotion() {
    if (widget.score >= 8) {
      return ('Congratulations.You are promoted to the next level!');
    } else {
      return ('OOPS! Insufficient score. Try again!');
    }
  }

  void dispose() {
    super.dispose();
    widget.radioButtonState = null;
  }

  bool buttonState = true;
  bool enableLevel() {
    if (widget.score >= 8) {
      return buttonState = true;
    } else {
      return buttonState = false;
    }
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark(),
        home: Scaffold(
          body: Center(
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Your Score',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 50.0,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  SizedBox(
                    height: 30.0,
                  ),
                  Text(
                    widget.score.toString() + '/10',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 35.0,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Text(
                    checkLevelPromotion(),
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 30.0,
                        fontWeight: FontWeight.w700),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: 80.0,
                  ),
                  Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 30.0),
                        child: SizedBox(
                          height: 50.0,
                          width: 150.0,
                          child: ElevatedButton(
                              style: ButtonStyle(
                                shape: MaterialStateProperty.all(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                ),
                                backgroundColor:
                                    MaterialStateProperty.all(Colors.indigo),
                              ),
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.keyboard_arrow_left,
                                    size: 25.0,
                                  ),
                                  SizedBox(
                                    width: 5.0,
                                  ),
                                  Text(
                                    'Try again',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                ],
                              ),
                              onPressed: () {
                                widget.radioButtonState = null;
                                Navigator.pushAndRemoveUntil(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          QuestionJavaPageLevel2(),
                                    ),
                                    (route) => false);
                              }),
                        ),
                      ),
                      SizedBox(
                        width: 70.0,
                      ),
                      SizedBox(
                        height: 50.0,
                        width: 130.0,
                        child: ElevatedButton(
                          style: ButtonStyle(
                            shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                            ),
                            backgroundColor: enableLevel()
                                ? MaterialStateProperty.all(
                                    Colors.indigo,
                                  )
                                : MaterialStateProperty.all(Colors.white),
                          ),
                          child: Row(
                            children: [
                              Text(
                                'Level 3',
                                style: TextStyle(
                                  color: enableLevel()
                                      ? Colors.white
                                      : Colors.black,
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.bold,
                                ),
                                textAlign: TextAlign.center,
                              ),
                              SizedBox(
                                width: 5.0,
                              ),
                              Icon(
                                Icons.keyboard_arrow_right,
                                size: 25.0,
                                color:
                                    enableLevel() ? Colors.white : Colors.black,
                              )
                            ],
                          ),
                          onPressed: enableLevel()
                              ? () => Navigator.pushNamed(
                                  context, QuestionJavaPageLevel3.id)
                              : null,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class JavaQuizResultsLevel3 extends StatefulWidget {
  JavaQuizResultsLevel3({@required this.score});
  int score;
  static String id = 'JavaQuizScoreLevel3';
  RadioButtonState radioButtonState = RadioButtonState.RadioButton1;
  @override
  _JavaQuizResultsLevel3State createState() => _JavaQuizResultsLevel3State();
}

class _JavaQuizResultsLevel3State extends State<JavaQuizResultsLevel3> {
  QuestionJavaPageLevel3 questionJavaPageLevel3 = QuestionJavaPageLevel3();
  String checkLevelPromotion() {
    if (widget.score >= 8) {
      return ('Congratulations.You are promoted to the next level!');
    } else {
      return ('OOPS! Insufficient score. Try again!');
    }
  }

  void dispose() {
    super.dispose();
    widget.radioButtonState = null;
  }

  bool buttonState = true;
  bool enableLevel() {
    if (widget.score >= 8) {
      return buttonState = true;
    } else {
      return buttonState = false;
    }
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark(),
        home: Scaffold(
          body: Center(
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Your Score',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 50.0,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  SizedBox(
                    height: 30.0,
                  ),
                  Text(
                    widget.score.toString() + '/10',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 35.0,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Text(
                    checkLevelPromotion(),
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 30.0,
                        fontWeight: FontWeight.w700),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: 80.0,
                  ),
                  Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 30.0),
                        child: SizedBox(
                          height: 50.0,
                          width: 150.0,
                          child: ElevatedButton(
                              style: ButtonStyle(
                                shape: MaterialStateProperty.all(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                ),
                                backgroundColor:
                                    MaterialStateProperty.all(Colors.indigo),
                              ),
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.keyboard_arrow_left,
                                    size: 25.0,
                                  ),
                                  SizedBox(
                                    width: 5.0,
                                  ),
                                  Text(
                                    'Try again',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                ],
                              ),
                              onPressed: () {
                                widget.radioButtonState = null;
                                Navigator.pushAndRemoveUntil(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          QuestionJavaPageLevel3(),
                                    ),
                                    (route) => false);
                              }),
                        ),
                      ),
                      SizedBox(
                        width: 60.0,
                      ),
                      SizedBox(
                        height: 50.0,
                        width: 150.0,
                        child: ElevatedButton(
                          style: ButtonStyle(
                            shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                            ),
                            backgroundColor: MaterialStateProperty.all(
                              Colors.indigo,
                            ),
                          ),
                          child: Row(
                            children: [
                              Text(
                                'Categories',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 17.0,
                                  fontWeight: FontWeight.bold,
                                ),
                                textAlign: TextAlign.center,
                              ),
                              SizedBox(
                                width: 5.0,
                              ),
                              Icon(
                                Icons.keyboard_arrow_right,
                                size: 25.0,
                                color: Colors.white,
                              )
                            ],
                          ),
                          onPressed: enableLevel()
                              ? () => Navigator.pushNamed(
                                  context, QuizCategories.id)
                              : null,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class JavaScriptQuizResultsLevel1 extends StatefulWidget {
  JavaScriptQuizResultsLevel1({@required this.score});
  int score;
  static String id = 'JavaScriptScoreLevel1';
  RadioButtonState radioButtonState = RadioButtonState.RadioButton1;
  @override
  _JavaScriptQuizResultsLevel1State createState() =>
      _JavaScriptQuizResultsLevel1State();
}

class _JavaScriptQuizResultsLevel1State
    extends State<JavaScriptQuizResultsLevel1> {
  QuestionJavaScriptPageLevel1 questionJavaScriptPageLevel1 =
      QuestionJavaScriptPageLevel1();
  String checkLevelPromotion() {
    if (widget.score >= 8) {
      return ('Congratulations.You are promoted to the next level!');
    } else {
      return ('OOPS! Insufficient score. Try again!');
    }
  }

  void dispose() {
    super.dispose();
    widget.radioButtonState = null;
  }

  bool buttonState = true;
  bool enableLevel() {
    if (widget.score >= 8) {
      return buttonState = true;
    } else {
      return buttonState = false;
    }
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark(),
        home: Scaffold(
          body: Center(
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Your Score',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 50.0,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  SizedBox(
                    height: 30.0,
                  ),
                  Text(
                    widget.score.toString() + '/10',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 35.0,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Text(
                    checkLevelPromotion(),
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 30.0,
                        fontWeight: FontWeight.w700),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: 80.0,
                  ),
                  Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 30.0),
                        child: SizedBox(
                          height: 50.0,
                          width: 150.0,
                          child: ElevatedButton(
                              style: ButtonStyle(
                                shape: MaterialStateProperty.all(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                ),
                                backgroundColor:
                                    MaterialStateProperty.all(Colors.indigo),
                              ),
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.keyboard_arrow_left,
                                    size: 25.0,
                                  ),
                                  SizedBox(
                                    width: 5.0,
                                  ),
                                  Text(
                                    'Try again',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                ],
                              ),
                              onPressed: () {
                                widget.radioButtonState = null;
                                Navigator.pushAndRemoveUntil(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          QuestionJavaScriptPageLevel1(),
                                    ),
                                    (route) => false);
                              }),
                        ),
                      ),
                      SizedBox(
                        width: 70.0,
                      ),
                      SizedBox(
                        height: 50.0,
                        width: 130.0,
                        child: ElevatedButton(
                          style: ButtonStyle(
                            shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                            ),
                            backgroundColor: enableLevel()
                                ? MaterialStateProperty.all(
                                    Colors.indigo,
                                  )
                                : MaterialStateProperty.all(Colors.white),
                          ),
                          child: Row(
                            children: [
                              Text(
                                'Level 2',
                                style: TextStyle(
                                  color: enableLevel()
                                      ? Colors.white
                                      : Colors.black,
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.bold,
                                ),
                                textAlign: TextAlign.center,
                              ),
                              SizedBox(
                                width: 5.0,
                              ),
                              Icon(
                                Icons.keyboard_arrow_right,
                                size: 25.0,
                                color:
                                    enableLevel() ? Colors.white : Colors.black,
                              )
                            ],
                          ),
                          onPressed: enableLevel()
                              ? () => Navigator.pushNamed(
                                  context, QuestionJavaScriptPageLevel2.id)
                              : null,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class JavaScriptQuizResultsLevel2 extends StatefulWidget {
  JavaScriptQuizResultsLevel2({@required this.score});
  int score;
  static String id = 'JavaScriptScoreLevel2';
  RadioButtonState radioButtonState = RadioButtonState.RadioButton1;
  @override
  _JavaScriptQuizResultsLevel2State createState() =>
      _JavaScriptQuizResultsLevel2State();
}

class _JavaScriptQuizResultsLevel2State
    extends State<JavaScriptQuizResultsLevel2> {
  QuestionJavaScriptPageLevel2 questionJavaScriptPageLevel2 =
      QuestionJavaScriptPageLevel2();
  String checkLevelPromotion() {
    if (widget.score >= 8) {
      return ('Congratulations.You are promoted to the next level!');
    } else {
      return ('OOPS! Insufficient score. Try again!');
    }
  }

  @override
  void dispose() {
    super.dispose();
    widget.radioButtonState = null;
  }

  bool buttonState = true;
  bool enableLevel() {
    if (widget.score >= 8) {
      return buttonState = true;
    } else {
      return buttonState = false;
    }
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark(),
        home: Scaffold(
          body: Center(
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Your Score',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 50.0,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  SizedBox(
                    height: 30.0,
                  ),
                  Text(
                    widget.score.toString() + '/10',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 35.0,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Text(
                    checkLevelPromotion(),
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 30.0,
                        fontWeight: FontWeight.w700),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: 80.0,
                  ),
                  Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 30.0),
                        child: SizedBox(
                          height: 50.0,
                          width: 150.0,
                          child: ElevatedButton(
                              style: ButtonStyle(
                                shape: MaterialStateProperty.all(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                ),
                                backgroundColor:
                                    MaterialStateProperty.all(Colors.indigo),
                              ),
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.keyboard_arrow_left,
                                    size: 25.0,
                                  ),
                                  SizedBox(
                                    width: 5.0,
                                  ),
                                  Text(
                                    'Try again',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                ],
                              ),
                              onPressed: () {
                                widget.radioButtonState = null;
                                Navigator.pushAndRemoveUntil(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          QuestionJavaScriptPageLevel2(),
                                    ),
                                    (route) => false);
                              }),
                        ),
                      ),
                      SizedBox(
                        width: 70.0,
                      ),
                      SizedBox(
                        height: 50.0,
                        width: 130.0,
                        child: ElevatedButton(
                          style: ButtonStyle(
                            shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                            ),
                            backgroundColor: enableLevel()
                                ? MaterialStateProperty.all(
                                    Colors.indigo,
                                  )
                                : MaterialStateProperty.all(Colors.white),
                          ),
                          child: Row(
                            children: [
                              Text(
                                'Level 3',
                                style: TextStyle(
                                  color: enableLevel()
                                      ? Colors.white
                                      : Colors.black,
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.bold,
                                ),
                                textAlign: TextAlign.center,
                              ),
                              SizedBox(
                                width: 5.0,
                              ),
                              Icon(
                                Icons.keyboard_arrow_right,
                                size: 25.0,
                                color:
                                    enableLevel() ? Colors.white : Colors.black,
                              )
                            ],
                          ),
                          onPressed: enableLevel()
                              ? () => Navigator.pushNamed(
                                  context, QuestionJavaScriptPageLevel3.id)
                              : null,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class JavaScriptQuizResultsLevel3 extends StatefulWidget {
  JavaScriptQuizResultsLevel3({@required this.score});
  int score;
  static String id = 'JavaScriptScoreLevel3';
  RadioButtonState radioButtonState = RadioButtonState.RadioButton1;
  @override
  _JavaScriptQuizResultsLevel3State createState() =>
      _JavaScriptQuizResultsLevel3State();
}

class _JavaScriptQuizResultsLevel3State
    extends State<JavaScriptQuizResultsLevel3> {
  QuestionJavaScriptPageLevel3 questionJavaScriptPageLevel3 =
      QuestionJavaScriptPageLevel3();
  String checkLevelPromotion() {
    if (widget.score >= 8) {
      return ('Congratulations.You are promoted to the next level!');
    } else {
      return ('OOPS! Insufficient score. Try again!');
    }
  }

  @override
  void dispose() {
    super.dispose();
    widget.radioButtonState = null;
  }

  bool buttonState = true;
  bool enableLevel() {
    if (widget.score >= 8) {
      return buttonState = true;
    } else {
      return buttonState = false;
    }
  }

  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark(),
        home: Scaffold(
          body: Center(
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Your Score',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 50.0,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  SizedBox(
                    height: 30.0,
                  ),
                  Text(
                    widget.score.toString() + '/10',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 35.0,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Text(
                    checkLevelPromotion(),
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 30.0,
                        fontWeight: FontWeight.w700),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: 80.0,
                  ),
                  Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 30.0),
                        child: SizedBox(
                          height: 50.0,
                          width: 155.0,
                          child: ElevatedButton(
                              style: ButtonStyle(
                                shape: MaterialStateProperty.all(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                ),
                                backgroundColor:
                                    MaterialStateProperty.all(Colors.indigo),
                              ),
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.keyboard_arrow_left,
                                    size: 25.0,
                                  ),
                                  SizedBox(
                                    width: 5.0,
                                  ),
                                  Text(
                                    'Try again',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                ],
                              ),
                              onPressed: () {
                                widget.radioButtonState = null;
                                Navigator.pushAndRemoveUntil(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          QuestionJavaScriptPageLevel3(),
                                    ),
                                    (route) => false);
                              }),
                        ),
                      ),
                      SizedBox(
                        width: 70.0,
                      ),
                      SizedBox(
                        height: 50.0,
                        width: 150.0,
                        child: ElevatedButton(
                          style: ButtonStyle(
                            shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                            ),
                            backgroundColor:
                                MaterialStateProperty.all(Colors.indigo),
                          ),
                          child: Row(
                            children: [
                              Text(
                                'Categories',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 17.0,
                                  fontWeight: FontWeight.bold,
                                ),
                                textAlign: TextAlign.center,
                              ),
                              SizedBox(
                                width: 5.0,
                              ),
                              Icon(
                                Icons.keyboard_arrow_right,
                                size: 25.0,
                                color: Colors.white,
                              )
                            ],
                          ),
                          onPressed: enableLevel()
                              ? () => Navigator.pushNamed(
                                  context, QuizCategories.id)
                              : null,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
