import 'QuestionsConstructorPython.dart';

int questionNumberPythonLevel1 = 0;
int questionNumberPythonLevel2 = 0;
int questionNumberPythonLevel3 = 0;

class QuestionsPythonLevel1List {
  List<QuestionsConstructorPythonLevel1> questionsLevel1 = [
    QuestionsConstructorPythonLevel1(
        pythonProgramLevel1Question:
            '1. Which of the following operators is the correct option for power(ab)?',
        pythonProgramLevel1option1: 'a)a**b',
        pythonProgramLevel1option2: 'b)a ^ ^ b',
        pythonProgramLevel1option3: 'c)a ^ * b',
        pythonProgramLevel1option4: 'd)a ^ b'),
    QuestionsConstructorPythonLevel1(
        pythonProgramLevel1Question: '2. Which of the following is incorrect?',
        pythonProgramLevel1option1: 'a) x = 19023',
        pythonProgramLevel1option2: 'b) x = 03964 ',
        pythonProgramLevel1option3: 'c) x = 0x4f5',
        pythonProgramLevel1option4: 'd) x = 0b101'),
    QuestionsConstructorPythonLevel1(
        pythonProgramLevel1Question:
            '3. Which of these about a dictionary is false?',
        pythonProgramLevel1option1: 'a) Dictionaries are mutable',
        pythonProgramLevel1option2: 'b) Dictionaries aren’t ordered',
        pythonProgramLevel1option3:
            'c) The keys of a dictionary can be accessed using values',
        pythonProgramLevel1option4:
            'd) The values of a dictionary can be accessed using keys'),
    QuestionsConstructorPythonLevel1(
        pythonProgramLevel1Question:
            '4.The format function, when applied on a string returns ___________',
        pythonProgramLevel1option1: 'a) int',
        pythonProgramLevel1option2: 'b) Error',
        pythonProgramLevel1option3: 'c) bool',
        pythonProgramLevel1option4: 'd) str'),
    QuestionsConstructorPythonLevel1(
        pythonProgramLevel1Question:
            '5. Which is the most appropriate definition for recursion?',
        pythonProgramLevel1option1:
            'a) A function execution instance that calls another execution instance of the same function',
        pythonProgramLevel1option2:
            'b) An in-built method that is automatically called',
        pythonProgramLevel1option3:
            'c) A class method that calls another class method',
        pythonProgramLevel1option4: 'd) A function that calls itself'),
    QuestionsConstructorPythonLevel1(
        pythonProgramLevel1Question:
            '6. Which of the following Boolean expressions is not logically equivalent to the other three?',
        pythonProgramLevel1option1: 'a) not(-6<10 or-6==10)',
        pythonProgramLevel1option2: 'b) -6>=0 and -6<=10',
        pythonProgramLevel1option3: 'c) not(-6<0 or-6>10)',
        pythonProgramLevel1option4: 'd) not(-6>10 or-6==10)'),
    QuestionsConstructorPythonLevel1(
        pythonProgramLevel1Question:
            '7 The function divmod(a,b), where both ‘a’ and ‘b’ are integers is evaluated as:',
        pythonProgramLevel1option1: 'a) (a//b, a%b)',
        pythonProgramLevel1option2: 'b) (a%b, a//b)',
        pythonProgramLevel1option3: 'c) (a//b, a*b)',
        pythonProgramLevel1option4: 'd) (a/b, a%b)'),
    QuestionsConstructorPythonLevel1(
        pythonProgramLevel1Question:
            '8. To add a new element to a list we use which command?',
        pythonProgramLevel1option1: 'a) list1.add(5)',
        pythonProgramLevel1option2: 'b) list1.addLast(5)',
        pythonProgramLevel1option3: 'c) list1.addEnd(5)',
        pythonProgramLevel1option4: 'd) list1.append(5)'),
    QuestionsConstructorPythonLevel1(
        pythonProgramLevel1Question:
            '9. What does single-level inheritance mean?',
        pythonProgramLevel1option1:
            'a) A single subclass derives from a single superclass',
        pythonProgramLevel1option2:
            'b) A single superclass inherits from multiple subclasses',
        pythonProgramLevel1option3:
            'c) A subclass derives from a class which in turn derives from another class',
        pythonProgramLevel1option4:
            'd) Multiple base classes inherit a single derived class'),
    QuestionsConstructorPythonLevel1(
        pythonProgramLevel1Question:
            '10. Which of the following is not an advantage of using modules?',
        pythonProgramLevel1option1: 'a) Provides a means of dividing up tasks',
        pythonProgramLevel1option2:
            'b) Provides a means of testing individual parts of the program',
        pythonProgramLevel1option3:
            'c) Provides a means of reuse of program code',
        pythonProgramLevel1option4:
            'd) Provides a means of reducing the size of the program'),
  ];

  String level1PythonQuestions() {
    return questionsLevel1[questionNumberPythonLevel1]
        .pythonProgramLevel1Question;
  }

  String level1PythonOption1() {
    return questionsLevel1[questionNumberPythonLevel1]
        .pythonProgramLevel1option1;
  }

  String level1PythonOption2() {
    return questionsLevel1[questionNumberPythonLevel1]
        .pythonProgramLevel1option2;
  }

  String level1PythonOption3() {
    return questionsLevel1[questionNumberPythonLevel1]
        .pythonProgramLevel1option3;
  }

  String level1PythonOption4() {
    return questionsLevel1[questionNumberPythonLevel1]
        .pythonProgramLevel1option4;
  }

  void level1QuestionCount() {
    if (questionNumberPythonLevel1 < questionsLevel1.length - 1) {
      questionNumberPythonLevel1++;
    }
    print(questionNumberPythonLevel1);
    print(questionsLevel1.length);
  }

  void level1QuestionSubtract() {
    if (questionNumberPythonLevel1 == 0) {
      questionNumberPythonLevel1 = 0;
    } else {
      questionNumberPythonLevel1--;
    }
  }

  int questionsReset() {
    return questionNumberPythonLevel1 = 0;
  }

  int level1GetQuestionNumber() {
    return questionNumberPythonLevel1;
  }
}

class QuestionsPythonLevel2List {
  List<QuestionConstructorPythonLevel2> questionLevel2 = [
    QuestionConstructorPythonLevel2(
        pythonProgramLevel2Question: "1.Study the following function:"
            "any([5>8, 6>3, 3>1])"
            "What will be the output of this code?",
        pythonProgramLevel2option1: 'a)Invalid code',
        pythonProgramLevel2option2: 'b)True',
        pythonProgramLevel2option3: 'c)None of these',
        pythonProgramLevel2option4: 'd)False'),
    QuestionConstructorPythonLevel2(
        pythonProgramLevel2Question:
            '2)The output to execute string.ascii_letters can also be obtained from:?',
        pythonProgramLevel2option1: 'a)ascii_lowercase_string.digits',
        pythonProgramLevel2option2: 'b)character',
        pythonProgramLevel2option3: 'c)lowercase_string.uppercase',
        pythonProgramLevel2option4: 'd)ascii_lowercase+string.ascii_uppercase'),
    QuestionConstructorPythonLevel2(
        pythonProgramLevel2Question:
            'Q 3 - Which of the following is false statement in python',
        pythonProgramLevel2option1: "a)int('144')==144",
        pythonProgramLevel2option2: 'b)int(144)==144',
        pythonProgramLevel2option3: 'c)int(144.0)==144',
        pythonProgramLevel2option4: 'd) None of the above'),
    QuestionConstructorPythonLevel2(
        pythonProgramLevel2Question:
            'Q 4 - What command is used to shuffle a list ‘L’?',
        pythonProgramLevel2option1: 'a)L.shuffle()',
        pythonProgramLevel2option2: 'b)shuffle(L)',
        pythonProgramLevel2option3: 'c)random.shufflelist(L)',
        pythonProgramLevel2option4: 'd)random.Shuffle(L)'),
    QuestionConstructorPythonLevel2(
        pythonProgramLevel2Question:
            '5. What will be the output of the following Python code?'
            '>>> a=dict()'
            '>>> a[1]',
        pythonProgramLevel2option1: 'a) 0',
        pythonProgramLevel2option2: 'b) 1',
        pythonProgramLevel2option3: 'c) ‘ ‘',
        pythonProgramLevel2option4:
            'd) An exception is thrown since the dictionary is empty'),
    QuestionConstructorPythonLevel2(
        pythonProgramLevel2Question:
            '6. What will be the output of the following Python list comprehension?'
            '[j for i in range(2,8) for j in range(i*2, 50, i)]',
        pythonProgramLevel2option1: 'a) A list of non prime numbers, up to 50',
        pythonProgramLevel2option2: 'b) Error',
        pythonProgramLevel2option3: 'c) A list of prime numbers up to 50',
        pythonProgramLevel2option4:
            'd) A list of numbers divisible by 2, up to 50'),
    QuestionConstructorPythonLevel2(
        pythonProgramLevel2Question:
            '7. Which of the following is true about top-down design process?',
        pythonProgramLevel2option1:
            'a) The details of program are addressed before overall design',
        pythonProgramLevel2option2:
            'b) Only the details of the program are addressed',
        pythonProgramLevel2option3:
            'c) The overall design of program is addressed before details',
        pythonProgramLevel2option4:
            'd) Only the design of the program is addressed'),
    QuestionConstructorPythonLevel2(
        pythonProgramLevel2Question: "8.x = ['xy', 'yz']"
            "for i in a:"
            "i.upper()"
            "print(a)",
        pythonProgramLevel2option1: "['XY', 'YZ']",
        pythonProgramLevel2option2: 'None of these',
        pythonProgramLevel2option3: "['xy', 'yz']",
        pythonProgramLevel2option4: '[None, None]'),
    QuestionConstructorPythonLevel2(
        pythonProgramLevel2Question:
            "9.nameList = ['Harsh', 'Pratik', 'Bob', 'Dhruv']"
            "pos = nameList.index('Google')"
            "print (pos * 3)",
        pythonProgramLevel2option1: '(A) Google Google Google',
        pythonProgramLevel2option2: '(B) Harsh',
        pythonProgramLevel2option3: '(C) Harsh Harsh Harsh',
        pythonProgramLevel2option4: '(D) ValueError: ‘Google’ is not in list'),
    QuestionConstructorPythonLevel2(
        pythonProgramLevel2Question:
            '10. Which of the following is not a declaration of the dictionary?',
        pythonProgramLevel2option1: 'a) { }',
        pythonProgramLevel2option2: 'b) dict([[1,”A”],[2,”B”]])',
        pythonProgramLevel2option3: 'c) {1: ‘A’, 2: ‘B’}',
        pythonProgramLevel2option4: 'd){1,”A”,2”B”}'),
  ];
  String level2PythonQuestionsList() {
    return questionLevel2[questionNumberPythonLevel2]
        .pythonProgramLevel2Question;
  }

  String level2PythonOption1() {
    return questionLevel2[questionNumberPythonLevel2]
        .pythonProgramLevel2option1;
  }

  String level2PythonOption2() {
    return questionLevel2[questionNumberPythonLevel2]
        .pythonProgramLevel2option2;
  }

  String level2PythonOption3() {
    return questionLevel2[questionNumberPythonLevel2]
        .pythonProgramLevel2option3;
  }

  String level2PythonOption4() {
    return questionLevel2[questionNumberPythonLevel2]
        .pythonProgramLevel2option4;
  }

  void level2QuestionCount() {
    if (questionNumberPythonLevel2 < questionLevel2.length - 1) {
      questionNumberPythonLevel2++;
    }
    print(questionNumberPythonLevel2);
    print(questionLevel2.length);
  }

  void level2QuestionSubtract() {
    if (questionNumberPythonLevel2 == 0) {
      questionNumberPythonLevel2 = 0;
    } else {
      questionNumberPythonLevel2--;
    }
  }

  int questionsReset() {
    return questionNumberPythonLevel2 = 0;
  }

  int level2GetQuestionNumber() {
    return questionNumberPythonLevel2;
  }
}

class QuestionsPythonLevel3List {
  List<QuestionConstructorPythonLevel3> questionLevel3 = [
    QuestionConstructorPythonLevel3(
        pythonProgramLevel3Question: "1.temp = ['Tit', 'for', 'Tat']"
            '\n'
            "arr = [i[0].upper() for i in temp]"
            '\n'
            "print(arr)"
            '\n',
        pythonProgramLevel3Option1: 'a) [‘TIT’, ‘FOR’, ‘TAT’]',
        pythonProgramLevel3Option2: 'b) [‘TIT’]',
        pythonProgramLevel3Option3: 'c) [‘T’, ‘F’, ‘T’]',
        pythonProgramLevel3Option4: 'd) Compilation error'),
    QuestionConstructorPythonLevel3(
        pythonProgramLevel3Question: "2. mytuple1=(5, 1, 7, 6, 2)"
            '\n'
            "mytuple1.pop(2)"
            '\n'
            "print(mytuple1) "
            '\n',
        pythonProgramLevel3Option1: 'a)No output',
        pythonProgramLevel3Option2: 'b)5 1 7 6 2',
        pythonProgramLevel3Option3: 'c)AttributeError',
        pythonProgramLevel3Option4: 'd)None of the these'),
    QuestionConstructorPythonLevel3(
        pythonProgramLevel3Question: "3. my_string = 'google'"
            '\n'
            "for i in range(len(my_string)):"
            '\n'
            "print (my_string)"
            '\n'
            "my_string = 'a'"
            '\n',
        pythonProgramLevel3Option1: 'a)google a a a a a a a a a a a a',
        pythonProgramLevel3Option2: 'b)Error',
        pythonProgramLevel3Option3: 'c)gaaaaaaaaaaaa',
        pythonProgramLevel3Option4: 'd)None'),
    QuestionConstructorPythonLevel3(
        pythonProgramLevel3Question: '4. string = "my name is x"'
            '\n'
            'for i in '
            '\n'
            '.join(string.split()):'
            '\n'
            'print (i, end=", ")'
            '\n',
        pythonProgramLevel3Option1: 'a) m, y, , n, a, m, e, , i, s, , x,',
        pythonProgramLevel3Option2: 'b) m, y, , n, a, m, e, , i, s, , x',
        pythonProgramLevel3Option3: 'c) my, name, is, x,',
        pythonProgramLevel3Option4: 'd) error'),
    QuestionConstructorPythonLevel3(
        pythonProgramLevel3Question: '5.import threading'
            '\n'
            ' class thread(threading.Thread):'
            '\n'
            'def __init__(self, thread_ID):self.thread_ID = thread_ID '
            '\n'
            'def run(self):print(self.thread_ID)'
            '\n'
            'thread1 = thread(100)'
            '\n'
            'thread1.start()'
            '\n',
        pythonProgramLevel3Option1: 'a) Compilation error',
        pythonProgramLevel3Option2: 'b) Runtime error',
        pythonProgramLevel3Option3: 'c) 100',
        pythonProgramLevel3Option4: 'd) None of these'),
    QuestionConstructorPythonLevel3(
        pythonProgramLevel3Question: "'6. value = [1, 2, 3, 4]data = 0'"
            '\n'
            'try:data = value[4]'
            '\n'
            "except IndexError:print('TAT', end = '')"
            '\n'
            "except:print('Tit For Tat ', end = '')"
            '\n',
        pythonProgramLevel3Option1: 'a) TitForTat',
        pythonProgramLevel3Option2: 'b) TFT',
        pythonProgramLevel3Option3: 'c) TFT TITFORTAT',
        pythonProgramLevel3Option4: 'd) Compilation error'),
    QuestionConstructorPythonLevel3(
        pythonProgramLevel3Question: '7.CODE 1'
            '\n'
            'import math'
            '\n'
            'num=int(input("Enter a number"))'
            '\n'
            'print(math.factorial(num))'
            '\n'
            'CODE 2'
            '\n'
            'num=int(input("Enter a number"))'
            '\n'
            'print(math.factorial(num))'
            '\n',
        pythonProgramLevel3Option1: 'a) ValueError, NameError',
        pythonProgramLevel3Option2: 'c) NameError, TypeError',
        pythonProgramLevel3Option3: 'd) TypeError, ValueError',
        pythonProgramLevel3Option4: 'b) AttributeError, ValueError'),
    QuestionConstructorPythonLevel3(
        pythonProgramLevel3Question: "8. import re"
            '\n'
            "s = 'abc123 xyz666 lmn-11 def77'"
            '\n'
            "re.sub(r'\b([a-z]+)(\d+)', r'\2\1:', s)"
            '\n',
        pythonProgramLevel3Option1: 'a) ‘123abc: 666xyz: lmn-11 77def:’',
        pythonProgramLevel3Option2:
            'b) ‘abc123:’, ‘xyz666:’, ‘lmn-11:’, ‘def77:’',
        pythonProgramLevel3Option3: 'c) ‘77def: lmn-11: 666xyz: 123abc’',
        pythonProgramLevel3Option4: 'd) ‘abc123: xyz666: lmn-11: def77’'),
    QuestionConstructorPythonLevel3(
        pythonProgramLevel3Question: '9.def foo(i, x=[]):'
            '\n'
            'x.append(x.append(i))'
            '\n'
            'return x'
            '\n'
            'for i in range(3):'
            '\n'
            'y = foo(i)print(y)'
            '\n',
        pythonProgramLevel3Option1:
            'a) [[[0]], [[[0]], [1]], [[[0]], [[[0]], [1]], [2]]]',
        pythonProgramLevel3Option2:
            'b) [[[0]], [[[0]], [1]], [[[0]], [[[0]], [1]], [2]]]',
        pythonProgramLevel3Option3: 'c) [[0], [[0], 1], [[0], [[0], 1], 2]]',
        pythonProgramLevel3Option4: 'd) [0, None, 1, None, 2, None]'),
    QuestionConstructorPythonLevel3(
        pythonProgramLevel3Question: '10.def test(i,j):'
            '\n'
            'if(i==0):return j'
            '\n'
            'else:return test(i-1,i+j)'
            '\n'
            'print(test(4,7))'
            '\n',
        pythonProgramLevel3Option1: 'c) Infinite loop',
        pythonProgramLevel3Option2: 'b) 7',
        pythonProgramLevel3Option3: 'a) 13',
        pythonProgramLevel3Option4: 'd) 17'),
  ];
  String level3PythonQuestionsList() {
    return questionLevel3[questionNumberPythonLevel3]
        .pythonProgramLevel3Question;
  }

  String level3PythonOption1() {
    return questionLevel3[questionNumberPythonLevel3]
        .pythonProgramLevel3Option1;
  }

  String level3PythonOption2() {
    return questionLevel3[questionNumberPythonLevel3]
        .pythonProgramLevel3Option2;
  }

  String level3PythonOption3() {
    return questionLevel3[questionNumberPythonLevel3]
        .pythonProgramLevel3Option3;
  }

  String level3PythonOption4() {
    return questionLevel3[questionNumberPythonLevel3]
        .pythonProgramLevel3Option4;
  }

  void level3QuestionCount() {
    if (questionNumberPythonLevel3 < questionLevel3.length - 1) {
      questionNumberPythonLevel3++;
    }
    print(questionNumberPythonLevel3);
    print(questionLevel3.length);
  }

  void level3QuestionSubtract() {
    if (questionNumberPythonLevel3 == 0) {
      questionNumberPythonLevel3 = 0;
    } else {
      questionNumberPythonLevel3--;
    }
  }

  int questionsReset() {
    return questionNumberPythonLevel3 = 0;
  }

  int level3GetQuestionNumber() {
    return questionNumberPythonLevel3;
  }
}
