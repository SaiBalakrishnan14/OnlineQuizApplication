import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'QuestionsC.dart';
import 'QuizsScore.dart';
import 'package:timer_count_down/timer_controller.dart';
import 'package:timer_count_down/timer_count_down.dart';

enum RadioButtonState {
  RadioButton1,
  RadioButton2,
  RadioButton3,
  RadioButton4,
  none
}
final myKey = new GlobalKey();

class QuestionCPageLevel1 extends StatefulWidget {
  static String id = 'QuestionCPageLevel1';
  @override
  _QuestionCPageLevel1State createState() => _QuestionCPageLevel1State();
}

class _QuestionCPageLevel1State extends State<QuestionCPageLevel1> {
  int count = 0;
  int scoreCount() {
    if (answers[questionLevel1CList.level1GetQuestionNumber()] ==
        answerAppend[questionLevel1CList.level1GetQuestionNumber()]) {
      count = count + 1;
    }
    return count;
  }

  RadioButtonState radioButtonState = RadioButtonState.RadioButton1;
  QuestionLevel1CList questionLevel1CList = QuestionLevel1CList();
  List answers = [
    RadioButtonState.RadioButton1,
    RadioButtonState.RadioButton1,
    RadioButtonState.RadioButton3,
    RadioButtonState.RadioButton3,
    RadioButtonState.RadioButton4,
    RadioButtonState.RadioButton4,
    RadioButtonState.RadioButton4,
    RadioButtonState.RadioButton1,
    RadioButtonState.RadioButton4,
    RadioButtonState.RadioButton2,
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
              height: 20.0,
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
                value: questionLevel1CList.level1GetQuestionNumber() /
                    9.toDouble(),
                backgroundColor: Colors.white,
                valueColor: AlwaysStoppedAnimation<Color>(Colors.indigo),
              ),
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
                Center(
                  child: Countdown(
                    // controller: _controller,
                    seconds: 300,
                    build: (_, double time) => Text(
                      time.toString(),
                      style: TextStyle(
                        fontSize: 50,
                        color: time > 10 ? Colors.green : Colors.red,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    interval: Duration(milliseconds: 100),
                    onFinished: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return CQuizResultsLevel1(score: scoreCount());
                      })).then((value) {
                        count = 0;
                        _controller.restart();
                      });
                      questionLevel1CList.questionReset();

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
                ),
              ],
            ),
            SizedBox(
              height: 20.0,
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
                          height: 740.0,
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
                                      padding: EdgeInsets.only(left: 10.0),
                                      child: Center(
                                        child: Text(
                                          questionLevel1CList
                                              .level1CQuestions(),
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
                                            child: SizedBox(
                                              child: RadioListTile<
                                                  RadioButtonState>(
                                                controlAffinity:
                                                    ListTileControlAffinity
                                                        .leading,
                                                title: Text(
                                                  questionLevel1CList
                                                      .level1COption1(),
                                                  style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 25.0,
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
                                          color: Colors.indigo, width: 2.5),
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
                                                  questionLevel1CList
                                                      .level1COption2(),
                                                  style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 25.0,
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
                                      border: Border.all(
                                          color: Colors.indigo, width: 2.5),
                                      color: Colors.white,
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
                                                  questionLevel1CList
                                                      .level1COption3(),
                                                  style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 25.0,
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
                                          color: Colors.indigo, width: 2.5),
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
                                                  questionLevel1CList
                                                      .level1COption4(),
                                                  style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 25.0,
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
                                        width: 150.0,
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
                                                  fontSize: 19.0,
                                                  fontWeight: FontWeight.w700,
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
                                              questionLevel1CList
                                                  .level1QuestionSubtract();
                                              radioButtonState = answerAppend[
                                                  questionLevel1CList
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
                                        width: 99.0,
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
                                                  questionLevel1CList
                                                              .level1GetQuestionNumber() ==
                                                          9
                                                      ? 'Finish'
                                                      : 'Next',
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: questionLevel1CList
                                                                .level1GetQuestionNumber() ==
                                                            9
                                                        ? 13.5
                                                        : 17.0,
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
                                              answerAppend[questionLevel1CList
                                                      .level1GetQuestionNumber()] =
                                                  radioButtonState;
                                              print(radioButtonState);
                                              Future.delayed(
                                                  Duration(seconds: 1), () {
                                                scoreCount();
                                                if (questionLevel1CList
                                                        .level1GetQuestionNumber() ==
                                                    answers.length - 1) {
                                                  print(answers.length);
                                                  Navigator.push(context,
                                                      MaterialPageRoute(
                                                          builder: (context) {
                                                    return CQuizResultsLevel1(
                                                        score: scoreCount());
                                                  })).then(
                                                      (value) => count = 0);
                                                  questionLevel1CList
                                                      .questionReset();
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
                                                  questionLevel1CList
                                                      .level1QuestionCount();
                                                  radioButtonState = answerAppend[
                                                      questionLevel1CList
                                                          .level1GetQuestionNumber()];
                                                  scoreCount();
                                                  print(questionLevel1CList
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
