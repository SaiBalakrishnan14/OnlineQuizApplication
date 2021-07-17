import 'QuestionsConstructorJavaScript.dart';

int questionNumberJavaScriptLevel1 = 0;
int questionNumberJavaScriptLevel2 = 0;
int questionNumberJavaScriptLevel3 = 0;

class QuestionsJavaScriptLevel1List {
  List<QuestionConstructorJavaScriptLevel1> questionsLevel1 = [
    QuestionConstructorJavaScriptLevel1(
        javascriptLevel1Question:
            '1.A hexadecimal literal begins with __________',
        javascriptLevel1Option1: 'a) 0x',
        javascriptLevel1Option2: 'b) Both 0x and 0X',
        javascriptLevel1Option3: 'c) 0X',
        javaScriptLevel1Option4: 'd) 00'),
    QuestionConstructorJavaScriptLevel1(
        javascriptLevel1Question: '2.JavaScript is a _______________ language.',
        javascriptLevel1Option1: 'a) High-level',
        javascriptLevel1Option2: 'b) Object-Oriented',
        javascriptLevel1Option3: 'c) Object-Based',
        javaScriptLevel1Option4: 'd) Assembly-language'),
    QuestionConstructorJavaScriptLevel1(
        javascriptLevel1Question: '3.The “var” and “function” are __________',
        javascriptLevel1Option1: 'a) Data types',
        javascriptLevel1Option2: 'b) Declaration statements',
        javascriptLevel1Option3: 'c) Keywords',
        javaScriptLevel1Option4: 'd) Prototypes'),
    QuestionConstructorJavaScriptLevel1(
        javascriptLevel1Question:
            '4.The pop() method of the array does which of the following task?',
        javascriptLevel1Option1:
            'a) prints the first element but no effect on the length',
        javascriptLevel1Option2: 'b) updates the element',
        javascriptLevel1Option3: 'c) increments the total length by 1',
        javaScriptLevel1Option4: 'd) decrements the total length by 1'),
    QuestionConstructorJavaScriptLevel1(
        javascriptLevel1Question:
            '5.The method or operator used to identify the array is __________',
        javascriptLevel1Option1: 'a) typeof',
        javascriptLevel1Option2: 'b) ===',
        javascriptLevel1Option3: 'c) ==',
        javaScriptLevel1Option4: 'd) isarrayType()'),
    QuestionConstructorJavaScriptLevel1(
        javascriptLevel1Question:
            '6.When a class B can extend another class A, we say that?',
        javascriptLevel1Option1: 'a) B is the superclass and A is the subclass',
        javascriptLevel1Option2: 'b) Both A and B are the superclass',
        javascriptLevel1Option3: 'c) Both A and B are the subclass',
        javaScriptLevel1Option4:
            'd) A is the superclass and B is the subclass'),
    QuestionConstructorJavaScriptLevel1(
        javascriptLevel1Question:
            '7.The function definitions in JavaScript begins with _____________',
        javascriptLevel1Option1:
            'a) Return type, Function keyword and Parentheses',
        javascriptLevel1Option2: 'b) Return type and Identifier',
        javascriptLevel1Option3: 'c) Identifier and Return type',
        javaScriptLevel1Option4: 'd) Identifier and Parentheses'),
    QuestionConstructorJavaScriptLevel1(
        javascriptLevel1Question:
            '8.var tensquared = (function(x) {return x*x;}(10));',
        javascriptLevel1Option1: 'a) Error',
        javascriptLevel1Option2: 'b) Yes, perfectly',
        javascriptLevel1Option3: 'c) Memory leak',
        javaScriptLevel1Option4: 'd) Exception will be thrown'),
    QuestionConstructorJavaScriptLevel1(
        javascriptLevel1Question:
            '9. If you have a function f and an object o, you can define a method named m of o with ________',
        javascriptLevel1Option1: 'a) o=f.m;',
        javascriptLevel1Option2: 'b) o=f;',
        javascriptLevel1Option3: 'c) o.m=f;',
        javaScriptLevel1Option4: 'd) o.m=m.f;'),
    QuestionConstructorJavaScriptLevel1(
        javascriptLevel1Question:
            '10.Which of the operator is used to test if a particular property exists or not?',
        javascriptLevel1Option1: 'a) exist',
        javascriptLevel1Option2: 'b) exists',
        javascriptLevel1Option3: 'c) within',
        javaScriptLevel1Option4: 'd) in'),
  ];
  String level1JavaScriptQuestions() {
    return questionsLevel1[questionNumberJavaScriptLevel1]
        .javascriptLevel1Question;
  }

  String level1JavaScriptOption1() {
    return questionsLevel1[questionNumberJavaScriptLevel1]
        .javascriptLevel1Option1;
  }

  String level1JavaScriptOption2() {
    return questionsLevel1[questionNumberJavaScriptLevel1]
        .javascriptLevel1Option2;
  }

  String level1JavaScriptOption3() {
    return questionsLevel1[questionNumberJavaScriptLevel1]
        .javascriptLevel1Option3;
  }

  String level1JavaScriptOption4() {
    return questionsLevel1[questionNumberJavaScriptLevel1]
        .javaScriptLevel1Option4;
  }

  void questionLevel1Count() {
    if (questionNumberJavaScriptLevel1 < questionsLevel1.length - 1) {
      questionNumberJavaScriptLevel1++;
    }
    print(questionNumberJavaScriptLevel1);
    print(questionsLevel1.length);
  }

  void questionLevel1Subtract() {
    if (questionNumberJavaScriptLevel1 == 0) {
      questionNumberJavaScriptLevel1 = 0;
    } else {
      questionNumberJavaScriptLevel1--;
    }
  }

  int questionsReset() {
    return questionNumberJavaScriptLevel1 = 0;
  }

  int level1GetQuestionNumber() {
    return questionNumberJavaScriptLevel1;
  }
}

class QuestionsJavaScriptLevel2List {
  List<QuestionConstructorJavaScriptLevel2> questionsLevel2 = [
    QuestionConstructorJavaScriptLevel2(
        javaScriptLevel2Question:
            '1.The meaning for Augmenting classes is that ___________',
        javascriptLevel2Option1:
            'a) objects inherit prototype properties in the static state',
        javascriptLevel2Option2:
            'b) object doesn’t inherit prototype properties in the static state',
        javascriptLevel2Option3:
            'c) objects inherit prototype properties only in a dynamic state',
        javascriptLevel2Option4:
            'd) objects inherit prototype properties even in a dynamic state'),
    QuestionConstructorJavaScriptLevel2(
        javaScriptLevel2Question:
            '2.The method that can be used to create new properties and also to modify the attributes of existing properties is _______',
        javascriptLevel2Option1:
            'a) Both Object.defineProperty() and Object.defineProperties()',
        javascriptLevel2Option2: 'b) Object.inherit()',
        javascriptLevel2Option3: 'c) Object.defineProperties()',
        javascriptLevel2Option4: 'd) Object.defineProperty()'),
    QuestionConstructorJavaScriptLevel2(
        javaScriptLevel2Question:
            '3.Identify the process done in the following JavaScript code snippet?'
            '\n'
            'o = {x:1, y:{z:[false,null,""]}};'
            '\n'
            's =JSON.stringify(o);'
            '\n'
            'p = JSON.parse(s);'
            '\n',
        javascriptLevel2Option1: 'a) Object Serialization',
        javascriptLevel2Option2: 'b) Object Encapsulation',
        javascriptLevel2Option3: 'c) Object Encoding',
        javascriptLevel2Option4: 'd) Object Abstraction'),
    QuestionConstructorJavaScriptLevel2(
        javaScriptLevel2Question:
            '4. What will be the output of the following JavaScript code?'
            '\n'
            'const object1 = {property1: 20};'
            '\n'
            'console.log(Object.is(object1));'
            '\n',
        javascriptLevel2Option1: 'a) error',
        javascriptLevel2Option2: 'b) true',
        javascriptLevel2Option3: 'c) false',
        javascriptLevel2Option4: 'd) 12'),
    QuestionConstructorJavaScriptLevel2(
        javaScriptLevel2Question:
            '5.To define each of the set classes as a property of the sets object (namespace) for the module, the statement is',
        javascriptLevel2Option1: 'a) sets.SingletonSet = sets.extend(…);',
        javascriptLevel2Option2: 'b) sets = sets.extend(…);',
        javascriptLevel2Option3:
            'c) sets = sets.AbstractEnumerableSet.extend();',
        javascriptLevel2Option4:
            'd) sets.SingletonSet = sets.AbstractEnumerableSet.extend(..);'),
    QuestionConstructorJavaScriptLevel2(
        javaScriptLevel2Question:
            '6.The provides() function and the exportsobject are used to _________',
        javascriptLevel2Option1: 'a) Call the modules api',
        javascriptLevel2Option2: 'b) Store the module’s API',
        javascriptLevel2Option3: 'c) Register the modules api',
        javascriptLevel2Option4:
            'd) Register the module’s API and Store their API'),
    QuestionConstructorJavaScriptLevel2(
        javaScriptLevel2Question:
            '7. What will happen if the body of a for/in loop deletes a property that has not yet been enumerated?',
        javascriptLevel2Option1: 'a) The loop will not run',
        javascriptLevel2Option2: 'b) The property will be enumerated',
        javascriptLevel2Option3: 'c) That property will not be enumerated',
        javascriptLevel2Option4: 'd) The property will be stored in a cache'),
    QuestionConstructorJavaScriptLevel2(
        javaScriptLevel2Question:
            '8. What will be the role of the continue keyword in the following JavaScript code snippet?'
            '\n'
            'while (a != 0){'
            '\n'
            'if (a == 1)'
            '\n'
            'continue;]'
            '\n'
            ' else'
            '\n'
            'a++;'
            '\n'
            '}'
            '\n',
        javascriptLevel2Option1:
            'a)Continue keyword skips rest of statements in that iteration',
        javascriptLevel2Option2:
            'b) The continue keyword skips the next iteration',
        javascriptLevel2Option3: 'c) The continue keyword restarts the loop',
        javascriptLevel2Option4:
            'd) The continue keyword breaks out of the loop'),
    QuestionConstructorJavaScriptLevel2(
        javaScriptLevel2Question:
            '9.The primary purpose of the array map() function is that it __________',
        javascriptLevel2Option1:
            'a) passes each element of array on which it is invoked to function specified',
        javascriptLevel2Option2:
            'b) pass the elements of the array into another array',
        javascriptLevel2Option3:
            'c) passes each element of array and returns mapped elements',
        javascriptLevel2Option4:
            'd) maps the elements of another array into itself'),
    QuestionConstructorJavaScriptLevel2(
        javaScriptLevel2Question:
            '10.What will be the output of the following JavaScript code?'
            '\n'
            'var values=["one","two","Three"];'
            '\n'
            'var ans=values.shift();'
            '\n'
            'document.writeln(ans);'
            '\n',
        javascriptLevel2Option1: 'a) three',
        javascriptLevel2Option2: 'b) one',
        javascriptLevel2Option3: 'c) two',
        javascriptLevel2Option4: 'd) error'),
  ];

  String level2JavaScriptQuestions() {
    return questionsLevel2[questionNumberJavaScriptLevel2]
        .javaScriptLevel2Question;
  }

  String level2JavaScriptOption1() {
    return questionsLevel2[questionNumberJavaScriptLevel2]
        .javascriptLevel2Option1;
  }

  String level1JavaScriptOption2() {
    return questionsLevel2[questionNumberJavaScriptLevel2]
        .javascriptLevel2Option2;
  }

  String level2JavaScriptOption3() {
    return questionsLevel2[questionNumberJavaScriptLevel2]
        .javascriptLevel2Option3;
  }

  String level2JavaScriptOption4() {
    return questionsLevel2[questionNumberJavaScriptLevel2]
        .javascriptLevel2Option4;
  }

  void questionLevel2Count() {
    if (questionNumberJavaScriptLevel2 < questionsLevel2.length - 1) {
      questionNumberJavaScriptLevel2++;
    }
    print(questionNumberJavaScriptLevel2);
    print(questionsLevel2.length);
  }

  void questionLevel2Subtract() {
    if (questionNumberJavaScriptLevel2 == 0) {
      questionNumberJavaScriptLevel2 = 0;
    } else {
      questionNumberJavaScriptLevel2--;
    }
  }

  int questionsReset() {
    return questionNumberJavaScriptLevel2 = 0;
  }

  int level2GetQuestionNumber() {
    return questionNumberJavaScriptLevel2;
  }
}

class QuestionsJavaScriptLevel3List {
  List<QuestionsConstructorJavaScriptLevel3> questionsLevel3 = [
    QuestionsConstructorJavaScriptLevel3(
        javascriptLevel3Question:
            '1.Which one of the following is the correct output for the given JavaScript code?'
            '\n'
            'const obj1 ={ property1:\'15\'};'
            '\n'
            'const obj2 =Object.freeze(obj1);'
            '\n'
            'obj2.property1=\'20\';'
            '\n'
            'console.log(obj2.property1);'
            '\n',
        javascriptLevelOption1: 'a)20',
        javascriptLevel3Option2: 'b)15',
        javascriptLevel3Option3: 'c)Compilation error',
        javascriptLevel3Option4: 'd)Runtime error'),
    QuestionsConstructorJavaScriptLevel3(
        javascriptLevel3Question:
            '2.What kind of work is being performed in the following given part of JavaScript\'s code?'
            '\n'
            '<script>o = {x:1, y:{z:[false,null,""]}};'
            '\n'
            's = JSON.stringify(o);'
            '\n'
            'p = JSON.parse(s);'
            '\n'
            '</script>  '
            '\n',
        javascriptLevelOption1: 'a)Object Abstraction',
        javascriptLevel3Option2: 'b)Object Serialization',
        javascriptLevel3Option3: 'c)Object Encoding',
        javascriptLevel3Option4: 'd)Object Encapsulation'),
    QuestionsConstructorJavaScriptLevel3(
        javascriptLevel3Question:
            '3.What will be the correct output of the following JavaScript code?'
            '\n'
            '<p id="demo"></p> '
            '\n'
            '<script>functionFunct(){'
            '\n'
            'document.getElementById("demo").innerHTML=Math.atan2(8,4);}'
            '\n'
            '</script>  '
            '\n',
        javascriptLevelOption1: 'a)1.11',
        javascriptLevel3Option2: 'b)1.05',
        javascriptLevel3Option3: 'c)1.10',
        javascriptLevel3Option4: 'd)1.01'),
    QuestionsConstructorJavaScriptLevel3(
        javascriptLevel3Question:
            '4.Which one of the given options can be considered as the correct output for the following JavaScript code?'
            '\n'
            'const obj1 ={a:10,b:15,c:18};'
            '\n'
            'const obj2 =Object.assign({c:7, d:1}, obj1);'
            '\n'
            'console.log(obj2.c, obj2.d);'
            '\n',
        javascriptLevelOption1: 'a)7,1',
        javascriptLevel3Option2: 'b)18,1',
        javascriptLevel3Option3: 'c)Undefined',
        javascriptLevel3Option4: 'd)Error'),
    QuestionsConstructorJavaScriptLevel3(
        javascriptLevel3Question:
            '5.Which one of the following options is the correct output for the given code of javascript?'
            '\n'
            'var values=[4,5,6,7]'
            '\n'
            'var ans=values.slice(1);'
            '\n'
            'document.writeln(ans);'
            '\n',
        javascriptLevelOption1: 'a)5, 6, 7',
        javascriptLevel3Option2: 'b)4, 5, 6,',
        javascriptLevel3Option3: 'c)4, 5, 6, 7',
        javascriptLevel3Option4: 'd)Error'),
    QuestionsConstructorJavaScriptLevel3(
        javascriptLevel3Question:
            '6.Which one of the following code is equivalent to the following given code?'
            '\n'
            '.x(g,h);  '
            '\n',
        javascriptLevelOption1: 'a)[ "x" ] ( g , h );',
        javascriptLevel3Option2: 'b)x (g) &&a.x (h);',
        javascriptLevel3Option3: 'c)( g&&h );',
        javascriptLevel3Option4: 'd)(x )[ "g" , "h" ];'),
    QuestionsConstructorJavaScriptLevel3(
        javascriptLevel3Question: '7.<script>function myFunction(){'
            '\n'
            'document.getElementById("demo").innerHTML = Math.LN10;}'
            '\n'
            '</script>'
            '\n',
        javascriptLevelOption1: 'a) 2.10',
        javascriptLevel3Option2: 'b) 2.30',
        javascriptLevel3Option3: 'c) 2.20',
        javascriptLevel3Option4: 'd) 2.00'),
    QuestionsConstructorJavaScriptLevel3(
        javascriptLevel3Question:
            '8. What will be the last statement return in the following JavaScript code?'
            '\n'
            'function constfuncs(){'
            '\n'
            'var funcs = [];'
            '\n'
            'for(var i = 0; i < 10; i++)'
            '\n'
            'funcs[i] = function() { return i; };'
            '\n'
            'return funcs;'
            '\n'
            '}'
            '\n',
        javascriptLevelOption1: 'a) 12',
        javascriptLevel3Option2: 'b) 10',
        javascriptLevel3Option3: 'c) 0',
        javascriptLevel3Option4: 'd) 9'),
    QuestionsConstructorJavaScriptLevel3(
        javascriptLevel3Question: '9.function myFunction(){'
            '\n'
            'var res = "";'
            '\n'
            'res=res + Number.isSafeInteger(Math.pow(2, 53)-1)+": 2<sup>53</sup>-1<br>";'
            '\n'
            'document.getElementById("demo").innerHTML = res;}'
            '\n'
            '</script>'
            '\n',
        javascriptLevelOption1: 'a) Error',
        javascriptLevel3Option2: 'b) Undefined',
        javascriptLevel3Option3: 'c) False',
        javascriptLevel3Option4: 'd) True'),
    QuestionsConstructorJavaScriptLevel3(
        javascriptLevel3Question: '10.<script>'
            'if (window.attachEvent)window.attachEvent(\'onload\', fetch);'
            '\n'
            'elsewindow.addEventListener(\'load\', fetch, false);'
            '\n'
            '</script>'
            '\n',
        javascriptLevelOption1: 'a) The values are updated',
        javascriptLevel3Option2: 'b) EventListener is created based on if-else',
        javascriptLevel3Option3: 'c) The values are stored',
        javascriptLevel3Option4: 'd) The value is called'),
  ];
  String level3JavaScriptQuestions() {
    return questionsLevel3[questionNumberJavaScriptLevel3]
        .javascriptLevel3Question;
  }

  String level3JavaScriptOption1() {
    return questionsLevel3[questionNumberJavaScriptLevel3]
        .javascriptLevelOption1;
  }

  String level3JavaScriptOption2() {
    return questionsLevel3[questionNumberJavaScriptLevel3]
        .javascriptLevel3Option2;
  }

  String level3JavaScriptOption3() {
    return questionsLevel3[questionNumberJavaScriptLevel3]
        .javascriptLevel3Option3;
  }

  String level3JavaScriptOption4() {
    return questionsLevel3[questionNumberJavaScriptLevel3]
        .javascriptLevel3Option4;
  }

  void questionLevel3Count() {
    if (questionNumberJavaScriptLevel3 < questionsLevel3.length - 1) {
      questionNumberJavaScriptLevel3++;
    }
    print(questionNumberJavaScriptLevel3);
    print(questionsLevel3.length);
  }

  void questionLevel3Subtract() {
    if (questionNumberJavaScriptLevel3 == 0) {
      questionNumberJavaScriptLevel3 = 0;
    } else {
      questionNumberJavaScriptLevel3--;
    }
  }

  int questionsReset() {
    return questionNumberJavaScriptLevel3 = 0;
  }

  int level3GetQuestionNumber() {
    return questionNumberJavaScriptLevel3;
  }
}
