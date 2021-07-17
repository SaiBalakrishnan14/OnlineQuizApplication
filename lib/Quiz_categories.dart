import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:onlinequiz_app/QuestionsJavaScriptPageLevel1.dart';
import 'QuizsScore.dart';
import 'QuestionsPythonPageLevel1.dart';
import 'QuestionsCPageLevel1.dart';
import 'QuestionsJavaPageLevel1.dart';

class QuizCategories extends StatefulWidget {
  static String id = 'quizCategories';

  @override
  _QuizCategoriesState createState() => _QuizCategoriesState();
}

class _QuizCategoriesState extends State<QuizCategories> {
  PythonQuizResultsLevel1 pythonQuizResultsLevel1 = PythonQuizResultsLevel1();
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text('QUIZ CATEGORIES'),
          centerTitle: true,
        ),
        body: SafeArea(
          child: Container(
            child: Card(
              color: Colors.white,
              child: Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      height: 120.0,
                      width: 400.0,
                      decoration: BoxDecoration(color: Colors.indigo),
                      child: Align(
                        alignment: Alignment.center,
                        child: Text(
                          'Select language',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 40.0,
                            fontWeight: FontWeight.w800,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 30.0,
                    ),
                    QuestionCard(
                      questionText: 'PYTHON',
                      onPressing: () {
                        Navigator.pushNamed(
                            context, QuestionPythonPageLevel1.id);
                      },
                    ),
                    SizedBox(
                      height: 15.0,
                    ),
                    Divider(
                      height: 10.0,
                      color: Colors.grey,
                      thickness: 0.5,
                      indent: 25,
                      endIndent: 25,
                    ),
                    SizedBox(
                      height: 15.0,
                    ),
                    QuestionCard(
                      questionText: 'C PROGRAMMING',
                      onPressing: () {
                        Navigator.pushNamed(context, QuestionCPageLevel1.id);
                      },
                    ),
                    SizedBox(
                      height: 15.0,
                    ),
                    Divider(
                      height: 10.0,
                      color: Colors.grey,
                      thickness: 0.75,
                      indent: 25,
                      endIndent: 25,
                    ),
                    SizedBox(
                      height: 30.0,
                    ),
                    QuestionCard(
                      questionText: 'JAVA',
                      onPressing: () {
                        Navigator.pushNamed(context, QuestionJavaPageLevel1.id);
                      },
                    ),
                    SizedBox(
                      height: 15.0,
                    ),
                    Divider(
                      height: 10.0,
                      color: Colors.grey,
                      thickness: 0.75,
                      indent: 25,
                      endIndent: 25,
                    ),
                    SizedBox(
                      height: 15.0,
                    ),
                    QuestionCard(
                      questionText: 'JAVASCRIPT',
                      onPressing: () {
                        Navigator.pushNamed(
                            context, QuestionJavaScriptPageLevel1.id);
                      },
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class QuestionCard extends StatelessWidget {
  QuestionCard(
      {@required this.questionText, @required this.onPressing, this.width});
  final String questionText;
  final Function onPressing;
  final SizedBox width;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Colors.grey.withAlpha(100),
      onTap: onPressing,
      child: SizedBox(
        width: 410.0,
        height: 75.0,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Align(
              alignment: Alignment.center,
              child: Text(
                questionText,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 27.0,
                  fontWeight: FontWeight.w700,
                ),
                textAlign: TextAlign.right,
              ),
            ),
            SizedBox(
              width: 20.0,
            ),
            Align(
              alignment: Alignment.centerRight,
              child: Icon(
                Icons.keyboard_arrow_right,
                color: Colors.black,
                size: 30.0,
              ),
            )
          ],
        ),
      ),
    );
  }
}
