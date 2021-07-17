import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:timer_count_down/timer_controller.dart';
import 'package:timer_count_down/timer_count_down.dart';
import 'QuestionsPython.dart';
import 'QuizsScore.dart';
import 'dart:async';

enum RadioButtonState {
  RadioButton1,
  RadioButton2,
  RadioButton3,
  RadioButton4,
  none
}
final myKey = new GlobalKey();

class QuestionPythonPageLevel1 extends StatefulWidget {
  static String id = 'QuestionPythonPageLevel1';
  @override
  _QuestionPythonPageLevel1State createState() =>
      _QuestionPythonPageLevel1State();
}

class _QuestionPythonPageLevel1State extends State<QuestionPythonPageLevel1>
    with TickerProviderStateMixin {
  String radioState() {
    return radioButtonState = null;
  }

  int count = 0;
  int scoreCount() {
    int index = questionsPythonLevel1List.level1GetQuestionNumber();
    if (answers[index] == answerAppend[index]) {
      count = count + 1;
    }
    return count;
  }

  int countReset() {
    return count = 0;
  }

  RadioButtonState radioButtonState = RadioButtonState.RadioButton1;
  QuestionsPythonLevel1List questionsPythonLevel1List =
      QuestionsPythonLevel1List();
  List answers = [
    RadioButtonState.RadioButton1,
    RadioButtonState.RadioButton2,
    RadioButtonState.RadioButton3,
    RadioButtonState.RadioButton4,
    RadioButtonState.RadioButton1,
    RadioButtonState.RadioButton4,
    RadioButtonState.RadioButton1,
    RadioButtonState.RadioButton4,
    RadioButtonState.RadioButton1,
    RadioButtonState.RadioButton4,
  ];
  List answerAppend = [
    RadioButtonState.none,
    RadioButtonState.none,
    RadioButtonState.none,
    RadioButtonState.none,
    RadioButtonState.none,
    RadioButtonState.none,
    RadioButtonState.none,
    RadioButtonState.none,
    RadioButtonState.none,
    RadioButtonState.none,
  ];

  void initState() {
    super.initState();
    radioButtonState = null;
  }

  final CountdownController _controller =
      new CountdownController(autoStart: true);
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
        backgroundColor: Colors.lightBlueAccent,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 10.0,
            ),
            Center(
              child: Text(
                'Level 1',
                style: TextStyle(
                  color: Colors.indigo,
                  fontSize: 50.0,
                  fontWeight: FontWeight.w800,
                ),
              ),
            ),
            Container(
              height: 7.0,
              child: LinearProgressIndicator(
                value: questionsPythonLevel1List.level1GetQuestionNumber() /
                    9.toDouble(),
                backgroundColor: Colors.white,
                valueColor: AlwaysStoppedAnimation<Color>(Colors.indigo),
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                  child: Icon(
                    Icons.timer,
                    size: 45.0,
                    color: Colors.indigo,
                  ),
                ),
                Countdown(
                  // controller: _controller,
                  seconds: 300,
                  build: (_, double time) => Text(
                    time.toString(),
                    style: TextStyle(
                      fontSize: 50,
                      color: time > 20 ? Colors.green[600] : Colors.red,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  interval: Duration(milliseconds: 100),
                  onFinished: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return PythonQuizResultsLevel1(score: scoreCount());
                    })).then((value) {
                      count = 0;
                      _controller.restart();
                    });
                    questionsPythonLevel1List.questionsReset();

                    answerAppend = [
                      RadioButtonState.none,
                      RadioButtonState.none,
                      RadioButtonState.none,
                      RadioButtonState.none,
                      RadioButtonState.none,
                      RadioButtonState.none,
                      RadioButtonState.none,
                      RadioButtonState.none,
                      RadioButtonState.none,
                      RadioButtonState.none,
                    ];
                    setState(() {});
                  },
                ),
              ],
            ),
            Expanded(
              child: ListView(
                children: [
                  Container(
                    child: Center(
                      key: myKey,
                      child: Padding(
                        padding: EdgeInsets.all(20.0),
                        child: SizedBox(
                          height: 680.0,
                          child: Card(
                            color: Colors.white,
                            elevation: 10.0,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Expanded(
                                  flex: 3,
                                  child: Container(
                                    color: Colors.indigo,
                                    child: Padding(
                                      padding: EdgeInsets.only(left: 15.0),
                                      child: Center(
                                        child: Text(
                                          questionsPythonLevel1List
                                              .level1PythonQuestions(),
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 23.0,
                                            fontWeight: FontWeight.w800,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 30.0,
                                ),
                                Expanded(
                                  flex: 2,
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20.0),
                                      border: Border.all(
                                          color: Colors.indigo, width: 2.5),
                                      color: Colors.white,
                                    ),
                                    width: 330.0,
                                    child: Padding(
                                      padding: EdgeInsets.all(5.0),
                                      child: Row(
                                        children: [
                                          Expanded(
                                            flex: 2,
                                            child: SizedBox(
                                              child: RadioListTile<
                                                  RadioButtonState>(
                                                controlAffinity:
                                                    ListTileControlAffinity
                                                        .leading,
                                                title: Text(
                                                  questionsPythonLevel1List
                                                      .level1PythonOption1(),
                                                  style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 20.0,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                                activeColor: Colors.indigo,
                                                value: RadioButtonState
                                                    .RadioButton1,
                                                groupValue: radioButtonState,
                                                onChanged:
                                                    (RadioButtonState value) {
                                                  setState(() {
                                                    radioButtonState = value;
                                                  });
                                                },
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 20.0,
                                ),
                                Expanded(
                                  flex: 2,
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20.0),
                                      border: Border.all(
                                          color: Colors.indigo, width: 2),
                                      color: Colors.white,
                                    ),
                                    width: 330.0,
                                    height: 80.0,
                                    child: Padding(
                                      padding: EdgeInsets.all(5.0),
                                      child: Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.stretch,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Expanded(
                                            flex: 2,
                                            child: SizedBox(
                                              child: RadioListTile(
                                                title: Text(
                                                  questionsPythonLevel1List
                                                      .level1PythonOption2(),
                                                  style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 20.0,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                                controlAffinity:
                                                    ListTileControlAffinity
                                                        .leading,
                                                activeColor: Colors.indigo,
                                                value: RadioButtonState
                                                    .RadioButton2,
                                                groupValue: radioButtonState,
                                                onChanged: (value) {
                                                  setState(() {
                                                    radioButtonState = value;
                                                  });
                                                },
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 20.0,
                                ),
                                Expanded(
                                  flex: 2,
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20.0),
                                      color: Colors.white,
                                      border: Border.all(
                                          color: Colors.indigo, width: 2),
                                    ),
                                    width: 330.0,
                                    height: 80.0,
                                    child: Padding(
                                      padding: EdgeInsets.all(5.0),
                                      child: Row(
                                        children: [
                                          Expanded(
                                            child: SizedBox(
                                              child: RadioListTile(
                                                controlAffinity:
                                                    ListTileControlAffinity
                                                        .leading,
                                                title: Text(
                                                  questionsPythonLevel1List
                                                      .level1PythonOption3(),
                                                  style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 20.0,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                                activeColor: Colors.indigo,
                                                value: RadioButtonState
                                                    .RadioButton3,
                                                groupValue: radioButtonState,
                                                onChanged: (value) {
                                                  setState(() {
                                                    radioButtonState = value;
                                                  });
                                                },
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 20.0,
                                ),
                                Expanded(
                                  flex: 2,
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20.0),
                                      border: Border.all(
                                          color: Colors.indigo, width: 2),
                                      color: Colors.white,
                                    ),
                                    width: 330.0,
                                    height: 70.0,
                                    child: Padding(
                                      padding: EdgeInsets.all(5.0),
                                      child: Row(
                                        children: [
                                          Expanded(
                                            child: SizedBox(
                                              child: RadioListTile(
                                                controlAffinity:
                                                    ListTileControlAffinity
                                                        .leading,
                                                title: Text(
                                                  questionsPythonLevel1List
                                                      .level1PythonOption4(),
                                                  style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 20.0,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                                activeColor: Colors.indigo,
                                                value: RadioButtonState
                                                    .RadioButton4,
                                                groupValue: radioButtonState,
                                                onChanged: (value) {
                                                  setState(() {
                                                    radioButtonState = value;
                                                  });
                                                },
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 25.0,
                                ),
                                Row(
                                  children: [
                                    Container(
                                      margin: EdgeInsets.only(left: 15.0),
                                      child: SizedBox(
                                        width: 142.0,
                                        height: 50.0,
                                        child: ElevatedButton(
                                          style: ButtonStyle(
                                            shape: MaterialStateProperty.all(
                                              RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(10.0),
                                              ),
                                            ),
                                            backgroundColor:
                                                MaterialStateProperty.all(
                                                    Colors.indigo),
                                            elevation:
                                                MaterialStateProperty.all(5.0),
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
                                                'Previous',
                                                style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 17.5,
                                                  fontWeight: FontWeight.w800,
                                                ),
                                                textAlign: TextAlign.center,
                                              ),
                                              SizedBox(
                                                width: 10.0,
                                              ),
                                            ],
                                          ),
                                          onPressed: () {
                                            setState(() {
                                              questionsPythonLevel1List
                                                  .level1QuestionSubtract();
                                              radioButtonState = answerAppend[
                                                  questionsPythonLevel1List
                                                      .level1GetQuestionNumber()];
                                              Scrollable.ensureVisible(
                                                  myKey.currentContext);
                                            });
                                          },
                                        ),
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(left: 80.0),
                                      child: SizedBox(
                                        width: 102,
                                        height: 50.0,
                                        child: ElevatedButton(
                                            style: ButtonStyle(
                                              shape: MaterialStateProperty.all(
                                                RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          10.0),
                                                ),
                                              ),
                                              backgroundColor:
                                                  MaterialStateProperty.all(
                                                      Colors.indigo),
                                              elevation:
                                                  MaterialStateProperty.all(
                                                      5.0),
                                            ),
                                            child: Row(
                                              children: [
                                                Text(
                                                  questionsPythonLevel1List
                                                              .level1GetQuestionNumber() ==
                                                          9
                                                      ? 'Finish'
                                                      : 'Next',
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize:
                                                        questionsPythonLevel1List
                                                                    .level1GetQuestionNumber() ==
                                                                9
                                                            ? 14.5
                                                            : 18.0,
                                                    fontWeight: FontWeight.w700,
                                                  ),
                                                  textAlign: TextAlign.center,
                                                ),
                                                SizedBox(
                                                  width: 5.0,
                                                ),
                                                Icon(
                                                  Icons.keyboard_arrow_right,
                                                  size: 25.0,
                                                )
                                              ],
                                            ),
                                            onPressed: () async {
                                              answerAppend[questionsPythonLevel1List
                                                      .level1GetQuestionNumber()] =
                                                  radioButtonState;
                                              print(radioButtonState);
                                              Future.delayed(
                                                  Duration(seconds: 1), () {
                                                if (questionsPythonLevel1List
                                                        .level1GetQuestionNumber() ==
                                                    answers.length - 1) {
                                                  print(answers.length);
                                                  int something = scoreCount();
                                                  print("something");
                                                  print(something);
                                                  Navigator.push(context,
                                                      MaterialPageRoute(
                                                          builder: (context) {
                                                    return PythonQuizResultsLevel1(
                                                      score: something,
                                                    );
                                                  })).then((value) {
                                                    count = 0;
                                                    // });
                                                  });
                                                  questionsPythonLevel1List
                                                      .questionsReset();
                                                  answerAppend = [
                                                    RadioButtonState.none,
                                                    RadioButtonState.none,
                                                    RadioButtonState.none,
                                                    RadioButtonState.none,
                                                    RadioButtonState.none,
                                                    RadioButtonState.none,
                                                    RadioButtonState.none,
                                                    RadioButtonState.none,
                                                    RadioButtonState.none,
                                                    RadioButtonState.none,
                                                  ];
                                                  setState(() {});
                                                } else {
                                                  answerAppend[
                                                          questionsPythonLevel1List
                                                              .level1GetQuestionNumber()] =
                                                      radioButtonState;
                                                  scoreCount();
                                                  questionsPythonLevel1List
                                                      .level1QuestionCount();
                                                  radioButtonState = answerAppend[
                                                      questionsPythonLevel1List
                                                          .level1GetQuestionNumber()];
                                                  print(questionsPythonLevel1List
                                                      .level1GetQuestionNumber());
                                                  Scrollable.ensureVisible(
                                                      myKey.currentContext);
                                                  setState(() {});
                                                }
                                              });
                                            }),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 20.0,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
