import 'QuestionsConstructorjava.dart';

int questionNumberLevel1 = 0;
int questionNumberLevel2 = 0;
int questionNumberLevel3 = 0;

class QuestionsJavaLevel1List {
  List<QuestionConstructorJavaLevel1> questionLevel1 = [
    QuestionConstructorJavaLevel1(
        javaProgramLevel1Question:
            '1. What is the output of relational operators?',
        javaProgramLevel1Option1: 'a) Characters',
        javaProgramLevel1Option2: 'b) Boolean',
        javaProgramLevel1Option3: 'c) Integer',
        javaProgramLevel1Option4: 'd) Double'),
    QuestionConstructorJavaLevel1(
        javaProgramLevel1Question: '2. Which of these have highest precedence?',
        javaProgramLevel1Option1: 'a) *',
        javaProgramLevel1Option2: 'b) ++',
        javaProgramLevel1Option3: 'c) >>',
        javaProgramLevel1Option4: 'd) ()'),
    QuestionConstructorJavaLevel1(
        javaProgramLevel1Question:
            '3. Which of these can not be used for a variable name in Java?',
        javaProgramLevel1Option1: 'a) keyword',
        javaProgramLevel1Option2: 'b) identifier',
        javaProgramLevel1Option3: 'c) identifier & keyword',
        javaProgramLevel1Option4: 'd) none of the mentioned'),
    QuestionConstructorJavaLevel1(
        javaProgramLevel1Question:
            '4. Which of these operators is used to allocate memory for an object?',
        javaProgramLevel1Option1: 'a) new',
        javaProgramLevel1Option2: 'b) give',
        javaProgramLevel1Option3: 'c) alloc',
        javaProgramLevel1Option4: 'd) malloc'),
    QuestionConstructorJavaLevel1(
        javaProgramLevel1Question: '5. What is true about constructor?',
        javaProgramLevel1Option1: 'a) Constructor cannot throw an exception',
        javaProgramLevel1Option2: 'b) It can have any non access modifiers',
        javaProgramLevel1Option3: 'c) It can take any number of parameters',
        javaProgramLevel1Option4: 'd) It can contain return type'),
    QuestionConstructorJavaLevel1(
        javaProgramLevel1Question:
            '6. Which of these method of Thread class is used to Suspend a thread for a period of time?',
        javaProgramLevel1Option1: 'a) terminate()',
        javaProgramLevel1Option2: 'b) suspend()',
        javaProgramLevel1Option3: 'c) stop()',
        javaProgramLevel1Option4: 'd) sleep()'),
    QuestionConstructorJavaLevel1(
        javaProgramLevel1Question:
            '7. Which class is used to generate random number?',
        javaProgramLevel1Option1: 'a) java.util.randomNumber',
        javaProgramLevel1Option2: 'b) java.util.Object',
        javaProgramLevel1Option3: 'c) java.lang.Object',
        javaProgramLevel1Option4: 'd) java.util.Random'),
    QuestionConstructorJavaLevel1(
        javaProgramLevel1Question: '8. String in Java is a?',
        javaProgramLevel1Option1: 'a) variable',
        javaProgramLevel1Option2: 'b) character array',
        javaProgramLevel1Option3: 'c) object',
        javaProgramLevel1Option4: 'd) class'),
    QuestionConstructorJavaLevel1(
        javaProgramLevel1Question: '9. What does AWT stands for?',
        javaProgramLevel1Option1: 'a) All Writing Tools',
        javaProgramLevel1Option2: 'b) Abstract Writing Toolkit',
        javaProgramLevel1Option3: 'c) Abstract Window Toolkit',
        javaProgramLevel1Option4: 'd) All Window Tools'),
    QuestionConstructorJavaLevel1(
        javaProgramLevel1Question:
            '10. Which of these is a type of stream in Java?',
        javaProgramLevel1Option1: 'a) Short stream',
        javaProgramLevel1Option2: 'b) Byte stream',
        javaProgramLevel1Option3: 'c) Long stream',
        javaProgramLevel1Option4: 'd) Integer stream'),
  ];
  String level1JavaQuestions() {
    return questionLevel1[questionNumberLevel1].javaProgramLevel1Question;
  }

  String level1JavaOption1() {
    return questionLevel1[questionNumberLevel1].javaProgramLevel1Option1;
  }

  String level1JavaOption2() {
    return questionLevel1[questionNumberLevel1].javaProgramLevel1Option2;
  }

  String level1JavaOption3() {
    return questionLevel1[questionNumberLevel1].javaProgramLevel1Option3;
  }

  String level1JavaOption4() {
    return questionLevel1[questionNumberLevel1].javaProgramLevel1Option4;
  }

  void questionLevel1Count() {
    if (questionNumberLevel1 < questionLevel1.length) {
      questionNumberLevel1++;
    }
    print(questionLevel1);
    print(questionLevel1.length);
  }

  void questionLevel1Subtract() {
    if (questionNumberLevel1 == 0) {
      questionNumberLevel1 = 0;
    } else {
      questionNumberLevel1--;
    }
  }

  int questionsReset() {
    return questionNumberLevel1 = 0;
  }

  int level1GetQuestionNumber() {
    return questionNumberLevel1;
  }
}

class QuestionsJavaLevel2List {
  List<QuestionConstructorJavaLevel2> questionsLevel2 = [
    QuestionConstructorJavaLevel2(
        javaProgramLevel2Question:
            '1.Which of these is an incorrect array declaration?',
        javaProgramLevel2Option1: 'a) int arr[] = int [5] new',
        javaProgramLevel2Option2: 'b) int arr[] = new int[5]',
        javaProgramLevel2Option3: 'c) int [] arr = new int[5]',
        javaProgramLevel2Option4: 'd) int arr[] = new int[5]'),
    QuestionConstructorJavaLevel2(
        javaProgramLevel2Question:
            '2. What is it called if an object has its own lifecycle and there is no owner?',
        javaProgramLevel2Option1: 'a) Composition',
        javaProgramLevel2Option2: 'b) Association',
        javaProgramLevel2Option3: 'c) Aggregation',
        javaProgramLevel2Option4: 'd) Encapsulation'),
    QuestionConstructorJavaLevel2(
        javaProgramLevel2Question:
            '3. Which of these data types is used by operating system to manage the Recursion in Java?',
        javaProgramLevel2Option1: 'a) Stack',
        javaProgramLevel2Option2: 'b) Queue',
        javaProgramLevel2Option3: 'c) Tree',
        javaProgramLevel2Option4: 'd) Array'),
    QuestionConstructorJavaLevel2(
        javaProgramLevel2Question: '4.public class abc{'
            'int a=2000;'
            'public static void main(String argv[]){'
            'System.out.println(argv[1]+" :-Please pay Rs."+a);'
            '}}',
        javaProgramLevel2Option1:
            'a) Compilation and output Sharma :-Please pay Rs.2000',
        javaProgramLevel2Option2:
            'b) Compilation and output Rakesh :-Please pay Rs.2000',
        javaProgramLevel2Option3: 'c) Compilation but runtime error',
        javaProgramLevel2Option4: 'd) Compile time error'),
    QuestionConstructorJavaLevel2(
        javaProgramLevel2Question:
            '5.Which of the following creates a List of 3 visible items and multiple selections abled?',
        javaProgramLevel2Option1: 'a)new List(3, true)',
        javaProgramLevel2Option2: 'b)new List(true, 3)',
        javaProgramLevel2Option3: 'c)new List(3, false)',
        javaProgramLevel2Option4: 'd)new List(false, 3)'),
    QuestionConstructorJavaLevel2(
        javaProgramLevel2Question:
            '6. What will happen if two thread of the same priority are called to be processed simultaneously?',
        javaProgramLevel2Option1:
            'a) Both of them will be executed simultaneously',
        javaProgramLevel2Option2: 'b) It is dependent on the operating system',
        javaProgramLevel2Option3: 'c) None of them will be executed',
        javaProgramLevel2Option4:
            'd) Anyone will be executed first lexographically'),
    QuestionConstructorJavaLevel2(
        javaProgramLevel2Question: '7.class multithreaded_programing{'
            'public static void main(String args[]){'
            'Thread t = Thread.currentThread();'
            'System.out.println(t);}}',
        javaProgramLevel2Option1: 'a) Thread[main,5]',
        javaProgramLevel2Option2: 'b) Thread[5,main]',
        javaProgramLevel2Option3: 'c) Thread[main,5,main]',
        javaProgramLevel2Option4: 'd) Thread[main,0]'),
    QuestionConstructorJavaLevel2(
        javaProgramLevel2Question:
            '8.Which of these classes are the direct subclasses of the Throwable class?',
        javaProgramLevel2Option1: 'a)Error and Exception class',
        javaProgramLevel2Option2: 'b)Exception and VirtualMachineError class',
        javaProgramLevel2Option3: 'c)RuntimeException and Error class',
        javaProgramLevel2Option4:
            'd)IOException and VirtualMachineError class'),
    QuestionConstructorJavaLevel2(
        javaProgramLevel2Question:
            '9. Which of the following cannot be Type parameterized?',
        javaProgramLevel2Option1: 'a) Overriding methods',
        javaProgramLevel2Option2: 'b) Class methods',
        javaProgramLevel2Option3: 'c) Generic methods',
        javaProgramLevel2Option4: 'd) Overloaded Methods'),
    QuestionConstructorJavaLevel2(
        javaProgramLevel2Question:
            '10.What do you mean by chained exceptions in Java?',
        javaProgramLevel2Option1:
            'a)Exceptions occur in chains with discarding the debugging information',
        javaProgramLevel2Option2:
            'b)Exceptions occur in chains with discarding the debugging information',
        javaProgramLevel2Option3: 'c)An exception caused by other exceptions',
        javaProgramLevel2Option4: 'd)None of the above'),
  ];
  String level2JavaQuestions() {
    return questionsLevel2[questionNumberLevel2].javaProgramLevel2Question;
  }

  String level2JavaOption1() {
    return questionsLevel2[questionNumberLevel2].javaProgramLevel2Option1;
  }

  String level2JavaOption2() {
    return questionsLevel2[questionNumberLevel2].javaProgramLevel2Option2;
  }

  String level2JavaOption3() {
    return questionsLevel2[questionNumberLevel2].javaProgramLevel2Option3;
  }

  String level2JavaOption4() {
    return questionsLevel2[questionNumberLevel2].javaProgramLevel2Option4;
  }

  void questionLevel2Count() {
    if (questionNumberLevel2 < questionsLevel2.length) {
      questionNumberLevel2++;
    }
    print(questionNumberLevel2);
    print(questionsLevel2.length);
  }

  void questionLevel2Subtract() {
    if (questionNumberLevel2 == 0) {
      questionNumberLevel2 = 0;
    } else {
      questionNumberLevel2--;
    }
  }

  int questionsReset() {
    return questionNumberLevel2 = 0;
  }

  int level2GetQuestionNumber() {
    return questionNumberLevel2;
  }
}

class QuestionsJavaLevel3List {
  List<QuestionConstructorJavaLevel3> questionsLevel3 = [
    QuestionConstructorJavaLevel3(
        javaProgramLevel3Question:
            '1.What will be the output of the following program?'
            '\n'
            'public class Test {'
            '\n'
            'public static void main(String[] args) {'
            '\n'
            'int count = 1;while (count <= 15) {'
            '\n'
            'System.out.println(count % 2 == 1 ? "***" : "+++++"),'
            '\n'
            '++count;'
            '\n'
            '}}}'
            '\n',
        javaProgramLevel3Option1: 'a)15 times +++++',
        javaProgramLevel3Option2: 'b)8 times *** and 7 times +++++',
        javaProgramLevel3Option3: 'c)Both will print only once',
        javaProgramLevel3Option4: 'd)15 times ***'),
    QuestionConstructorJavaLevel3(
        javaProgramLevel3Question:
            '2.What is the result of the following program?'
            '\n'
            'public static synchronized void main(String[] args) throws InterruptedException'
            '\n'
            ' Thread f = new Thread();f.start();'
            '\n'
            'System.out.print("A");f.wait(1000);'
            '\n'
            'System.out.print("B");'
            '\n'
            '}  '
            '\n',
        javaProgramLevel3Option1: 'a)It only prints B and exits',
        javaProgramLevel3Option2: 'b)It only prints A and exits',
        javaProgramLevel3Option3:
            'c)A will be printed, and then an exception is thrown.',
        javaProgramLevel3Option4:
            'd)It prints A and B with a 1000 seconds delay between them'),
    QuestionConstructorJavaLevel3(
        javaProgramLevel3Question: '3.class Test{'
            '\n'
            'public static void main(String[] args){'
            '\n'
            'StringBuffer a = new StringBuffer("google");'
            '\n'
            'StringBuffer b = new StringBuffer("searchengine");'
            '\n'
            'a.delete(1,3);a.append(b);'
            '\n'
            'System.out.println(a);'
            '\n'
            '}}'
            '\n',
        javaProgramLevel3Option1: 'a)gglesearchengine',
        javaProgramLevel3Option2: 'b)glesearchengine',
        javaProgramLevel3Option3: 'c)lesearchengine',
        javaProgramLevel3Option4: 'd)Compilation error'),
    QuestionConstructorJavaLevel3(
        javaProgramLevel3Question:
            '4.What is the output of the following program?'
            '\n'
            'public class Test{'
            '\n'
            'public static void main(String[] args){'
            '\n'
            'int value = 3, sum = 6 + -- value;'
            '\n'
            'int data = --value + ++value / sum++ * value++ + ++sum % value--;'
            '\n'
            'System.out.println(data);'
            '\n'
            '}}'
            '\n',
        javaProgramLevel3Option1: 'a) 2',
        javaProgramLevel3Option2: 'b) 3',
        javaProgramLevel3Option3: 'c) 1',
        javaProgramLevel3Option4: 'd) 0'),
    QuestionConstructorJavaLevel3(
        javaProgramLevel3Question: 'public class Test{'
            '\n'
            'public static void main(String[] args){'
            '\n'
            'int temp = 40;'
            '\n'
            'if(temp == 30 && temp/0 == 4){'
            '\n'
            'System.out.println(1);} '
            '\n'
            'else{System.out.println(2);'
            '\n'
            '}}}'
            '\n',
        javaProgramLevel3Option1: 'a) 1',
        javaProgramLevel3Option2: 'b) 2',
        javaProgramLevel3Option3:
            'c) Compilation error due to divisibility by 0',
        javaProgramLevel3Option4:
            'd)Exception of java.lang.ArithmeticException'),
    QuestionConstructorJavaLevel3(
        javaProgramLevel3Question:
            '6.What will be the output of the following Java program?'
            '\n'
            'package pkg;'
            '\n'
            'class output{'
            '\n'
            'public static void main(String args[]){'
            '\n'
            'StringBuffer s1 = new StringBuffer("Hello World");'
            '\n'
            's1.insert(6 , "Good ");'
            '\n'
            'System.out.println(s1);'
            '\n'
            '}}'
            '\n',
        javaProgramLevel3Option1: 'a)HellGoodoWorld',
        javaProgramLevel3Option2: 'b) Compilation error',
        javaProgramLevel3Option3: 'c) HelloGoodWorld',
        javaProgramLevel3Option4: 'd) Runtime error'),
    QuestionConstructorJavaLevel3(
        javaProgramLevel3Question:
            '7. What will be the output of the following Java program?'
            '\n'
            'import java.util.*;'
            '\n'
            'class Output{public static void main(String args[]){'
            '\n'
            'ArrayList obj = new ArrayList();obj.add("A");'
            '\n'
            'obj.ensureCapacity(3);'
            '\n'
            'System.out.println(obj.size());'
            '\n'
            '}}'
            '\n',
        javaProgramLevel3Option1: 'a) 2',
        javaProgramLevel3Option2: 'b) 3',
        javaProgramLevel3Option3: 'c) 4',
        javaProgramLevel3Option4: 'd) 1'),
    QuestionConstructorJavaLevel3(
        javaProgramLevel3Question:
            '8.What will be the output of the following Java code?'
            '\n'
            'class output{'
            '\n'
            'public static void main(String args[]){'
            '\n'
            'String c = "Hello i love java";'
            '\n'
            'boolean var;'
            '\n'
            'var = c.startsWith("hello");'
            '\n'
            'System.out.println(var);'
            '\n'
            '}}'
            '\n',
        javaProgramLevel3Option1: 'a) false',
        javaProgramLevel3Option2: 'b) 1',
        javaProgramLevel3Option3: 'c) 0',
        javaProgramLevel3Option4: 'd) true'),
    QuestionConstructorJavaLevel3(
        javaProgramLevel3Question: '9.class output{'
            '\n'
            'public static void main(String args[]){'
            '\n'
            'String a = "hello i love java";'
            '\n'
            'System.out.println(a.indexOf(\'e\')+\'\'+a.indexOf(\'a\')+" "+a.lastIndexOf(\'l\')'
            '\n'
            '+\" \"+a.lastIndexOf(\'v\'));'
            '\n'
            '}}'
            '\n',
        javaProgramLevel3Option1: 'a) 7 8 8 9',
        javaProgramLevel3Option2: 'b) 1 14 8 15',
        javaProgramLevel3Option3: 'c) 6 4 6 9',
        javaProgramLevel3Option4: 'd) 5 4 5 9'),
    QuestionConstructorJavaLevel3(
        javaProgramLevel3Question: '10.class output{'
            '\n'
            'public static void main(String args[]){'
            '\n'
            '           String s = "Hello World";'
            '\n'
            'int i = s.indexOf(\'o\');'
            '\n'
            'int j = s.lastIndexOf(\'l\');'
            '\n'
            'System.out.print(i + " " + j);'
            '\n'
            '}}'
            '\n',
        javaProgramLevel3Option1: 'a) 5 9',
        javaProgramLevel3Option2: 'b) 5 8',
        javaProgramLevel3Option3: 'c) 4 9',
        javaProgramLevel3Option4: 'd) 4 8'),
  ];
  String level3JavaQuestions() {
    return questionsLevel3[questionNumberLevel3].javaProgramLevel3Question;
  }

  String level3JavaOption1() {
    return questionsLevel3[questionNumberLevel3].javaProgramLevel3Option1;
  }

  String level3JavaOption2() {
    return questionsLevel3[questionNumberLevel3].javaProgramLevel3Option2;
  }

  String level3JavaOption3() {
    return questionsLevel3[questionNumberLevel3].javaProgramLevel3Option3;
  }

  String level3JavaOption4() {
    return questionsLevel3[questionNumberLevel3].javaProgramLevel3Option4;
  }

  void questionLevel3Count() {
    if (questionNumberLevel3 < questionsLevel3.length) {
      questionNumberLevel3++;
    }
    print(questionsLevel3);
    print(questionsLevel3.length);
  }

  void questionLevel3Subtract() {
    if (questionNumberLevel3 == 0) {
      questionNumberLevel3 = 0;
    } else {
      questionNumberLevel3--;
    }
  }

  int questionsReset() {
    return questionNumberLevel3 = 0;
  }

  int level3GetQuestionNumber() {
    return questionNumberLevel3;
  }
}
