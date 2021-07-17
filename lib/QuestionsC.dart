import 'QuestionConstructorC.dart';

int questionNumberCLevel1 = 0;
int questionNumberCLevel2 = 0;
int questionNumberCLevel3 = 0;

class QuestionLevel1CList {
  List<QuestionsConstructorCLevel1> questionsLevel1 = [
    QuestionsConstructorCLevel1(
        cProgramLevel1Question:
            '1. Which keyword is used to prevent any changes in the variable within a C program?',
        cProgramLevel1option1: 'a) const',
        cProgramLevel2option2: 'b) mutable',
        cProgramLevel1option3: 'c) immutable',
        cProgramLevel1option4: 'd) volatile'),
    QuestionsConstructorCLevel1(
        cProgramLevel1Question:
            '2. Which function will you choose to join two words?',
        cProgramLevel1option1: 'a) strcat()',
        cProgramLevel2option2: 'b) strncon()',
        cProgramLevel1option3: 'c) memcon()',
        cProgramLevel1option4: 'd) strcpy()'),
    QuestionsConstructorCLevel1(
        cProgramLevel1Question:
            '3. Which is an indirection operator among the following?',
        cProgramLevel1option1: 'a) ->',
        cProgramLevel2option2: 'b) &',
        cProgramLevel1option3: 'c) *',
        cProgramLevel1option4: 'd) .'),
    QuestionsConstructorCLevel1(
        cProgramLevel1Question:
            '4. The maximum number of characters to be printed is specified by __________',
        cProgramLevel1option1: 'a) length',
        cProgramLevel2option2: 'b) flags',
        cProgramLevel1option3: 'c) precision',
        cProgramLevel1option4: 'd) width'),
    QuestionsConstructorCLevel1(
        cProgramLevel1Question:
            '5) What is the 16-bit compiler allowable range for integer constants?',
        cProgramLevel1option1: 'a)-3.4e38 to 3.4e38',
        cProgramLevel2option2: 'b)-32668 to 32667',
        cProgramLevel1option3: 'c)-32767 to 32768',
        cProgramLevel1option4: 'd)-32768 to 32767'),
    QuestionsConstructorCLevel1(
        cProgramLevel1Question: '6) What is required in each C program?',
        cProgramLevel1option1: 'a)The program does not require any function.',
        cProgramLevel2option2: 'b)Output data',
        cProgramLevel1option3: 'b)Input data',
        cProgramLevel1option4:
            'd)The program must have at least one function.'),
    QuestionsConstructorCLevel1(
        cProgramLevel1Question: '7) What does this declaration mean?'
            'int x : 4;  ',
        cProgramLevel1option1:
            'a)X cannot be greater than a four-digit integer.',
        cProgramLevel2option2: 'b)X is a four-digit integer.',
        cProgramLevel1option3: 'c)None of the these',
        cProgramLevel1option4: 'd)X is a four-bit integer.'),
    QuestionsConstructorCLevel1(
        cProgramLevel1Question:
            '8) How many times will the following loop execute?'
            '\n'
            'for(j = 1; j <= 10; j = j-1)  ',
        cProgramLevel1option1: 'a)Forever',
        cProgramLevel2option2: 'b)Never',
        cProgramLevel1option3: 'c)0',
        cProgramLevel1option4: 'd)1'),
    QuestionsConstructorCLevel1(
        cProgramLevel1Question:
            '9. Which of the following return-type cannot be used for a function in C?',
        cProgramLevel1option1: 'b) struct',
        cProgramLevel2option2: 'a) char *',
        cProgramLevel1option3: 'c) void',
        cProgramLevel1option4: 'd) none of the mentioned'),
    QuestionsConstructorCLevel1(
        cProgramLevel1Question:
            '10) Which one of the following is a loop construct that will always be executed once?',
        cProgramLevel1option1: 'a)while',
        cProgramLevel2option2: 'b)do while',
        cProgramLevel1option3: 'c)switch',
        cProgramLevel1option4: 'd)for'),
  ];
  String level1CQuestions() {
    return questionsLevel1[questionNumberCLevel1].cProgramLevel1Question;
  }

  String level1COption1() {
    return questionsLevel1[questionNumberCLevel1].cProgramLevel1option1;
  }

  String level1COption2() {
    return questionsLevel1[questionNumberCLevel1].cProgramLevel2option2;
  }

  String level1COption3() {
    return questionsLevel1[questionNumberCLevel1].cProgramLevel1option3;
  }

  String level1COption4() {
    return questionsLevel1[questionNumberCLevel1].cProgramLevel1option4;
  }

  void level1QuestionCount() {
    if (questionNumberCLevel1 < questionsLevel1.length) {
      questionNumberCLevel1++;
    }
  }

  void level1QuestionSubtract() {
    if (questionNumberCLevel1 == 0) {
      questionNumberCLevel1 = 0;
    } else {
      questionNumberCLevel1--;
    }
  }

  int questionReset() {
    return questionNumberCLevel1 = 0;
  }

  int level1GetQuestionNumber() {
    return questionNumberCLevel1;
  }
}

class QuestionLevel2CList {
  List<QuestionConstructorCLevel2> questionsLevel2 = [
    QuestionConstructorCLevel2(
        cProgramLevel2Question:
            '1) Why is a macro used in place of a function?',
        cProgramLevel2Option1: 'a)It increases execution time.',
        cProgramLevel2Option2: 'b)It reduces code size.',
        cProgramLevel2Option3: 'c)It increases code size.',
        cProgramLevel2Option4: 'd)It reduces execution time'),
    QuestionConstructorCLevel2(
        cProgramLevel2Question:
            '2.The keyword ‘break’ cannot be simply used within _________',
        cProgramLevel2Option1: 'a) for',
        cProgramLevel2Option2: 'b) while',
        cProgramLevel2Option3: 'c) if-else',
        cProgramLevel2Option4: 'd) do-while'),
    QuestionConstructorCLevel2(
        cProgramLevel2Question:
            '3. Which among the following has the highest precedence?',
        cProgramLevel2Option1: 'a) &',
        cProgramLevel2Option2: 'b)sizeof()',
        cProgramLevel2Option3: 'c)<<',
        cProgramLevel2Option4: 'd) &&'),
    QuestionConstructorCLevel2(
        cProgramLevel2Question: '4. The cos function computes the cosine of x.',
        cProgramLevel2Option1: 'a) measured in milliradian',
        cProgramLevel2Option2: 'b) measured in gradian',
        cProgramLevel2Option3: 'c) measured in degrees',
        cProgramLevel2Option4: 'd) measured in radians'),
    QuestionConstructorCLevel2(
        cProgramLevel2Question:
            '5.Which of the following statement is not true?',
        cProgramLevel2Option1:
            'a)A pointer can be reassigned to point to another data item.',
        cProgramLevel2Option2: 'b)A pointer can point to an array.',
        cProgramLevel2Option3:
            'c)Pointer to int & pointer to double are of same size.',
        cProgramLevel2Option4:
            'd)A pointer must point to a data item on the heap'),
    QuestionConstructorCLevel2(
        cProgramLevel2Question: "6.#include <stdio.h>"
            '\n'
            " int main()"
            '\n'
            "{ int x = 3, y = 2;int z = x << 1 > 5"
            '\n'
            ";printf('%d\n', z);}"
            '\n',
        cProgramLevel2Option1: 'a) Compile time error',
        cProgramLevel2Option2: 'b) 3',
        cProgramLevel2Option3: 'c) 0',
        cProgramLevel2Option4: 'd) 1'), //answer
    QuestionConstructorCLevel2(
        cProgramLevel2Question:
            '7.Which of the following will copy the null-terminated string that is in array src into array dest?',
        cProgramLevel2Option1: 'strcpy(dest, src);',
        cProgramLevel2Option2: 'b)strcpy(src, dest);',
        cProgramLevel2Option3: 'c)dest = src;',
        cProgramLevel2Option4: 'd)dest == src;'),
    QuestionConstructorCLevel2(
        cProgramLevel2Question: '8. What will the given C code do?'
            'int memcmp(const void *str1, const void *str2, size_t n)',
        cProgramLevel2Option1: 'a) copies the first n bytes of str1 to str2',
        cProgramLevel2Option2: 'b) copies the first n bytes of str2 to str1',
        cProgramLevel2Option3: 'c) invalid function',
        cProgramLevel2Option4:
            'd) compares the first n bytes of str1 and str2'),
    QuestionConstructorCLevel2(
        cProgramLevel2Question:
            '9. Which of the following functions returns a pointer to a string representing the date and time stored in a structure?',
        cProgramLevel2Option1: 'a) time()',
        cProgramLevel2Option2: 'b) asctime()',
        cProgramLevel2Option3: 'c) ctime()',
        cProgramLevel2Option4: 'd) localtime()'),
    QuestionConstructorCLevel2(
      cProgramLevel2Question: "10.for (i = 3; i < 15; i + = 3){"
          '\n'
          "printf ('%d'', i)"
          '\n'
          "++i"
          '\n'
          "}"
          '\n',
      cProgramLevel2Option1: '3 6 9 12 15',
      cProgramLevel2Option2: '3 7 11',
      cProgramLevel2Option3: '3 7 11 15',
      cProgramLevel2Option4: '3 6 9 12',
    ),
  ];
  String level2CQuestions() {
    return questionsLevel2[questionNumberCLevel2].cProgramLevel2Question;
  }

  String level2COption1() {
    return questionsLevel2[questionNumberCLevel2].cProgramLevel2Option1;
  }

  String level2COption2() {
    return questionsLevel2[questionNumberCLevel2].cProgramLevel2Option2;
  }

  String level2COption3() {
    return questionsLevel2[questionNumberCLevel2].cProgramLevel2Option3;
  }

  String level2COption4() {
    return questionsLevel2[questionNumberCLevel2].cProgramLevel2Option4;
  }

  void level2QuestionCount() {
    if (questionNumberCLevel2 < questionsLevel2.length) {
      questionNumberCLevel2++;
    }
  }

  void level2QuestionSubtract() {
    if (questionNumberCLevel2 == 0) {
      questionNumberCLevel2 = 0;
    } else {
      questionNumberCLevel2--;
    }
  }

  int questionReset() {
    return questionNumberCLevel2 = 0;
  }

  int level2GetQuestionNumber() {
    return questionNumberCLevel2;
  }
}

class QuestionLevel3List {
  List<QuestionConstructorCLevel3> questionsLevel3 = [
    QuestionConstructorCLevel3(
        cProgramLevel3Question:
            "1. What will be the output of the following C code?"
            '\n'
            "#include <stdio.h>"
            '\n'
            "int main(){"
            '\n'
            "printf('%d\n', srand(9000));"
            '\n'
            "return 0;"
            '\n'
            "}"
            '\n',
        cProgramLevel3Option1: 'a) An integer in the range 0 to 9000',
        cProgramLevel3Option2: 'b) A float in the range 0 to 1',
        cProgramLevel3Option3: 'c) A double in the range 0 to 9000',
        cProgramLevel3Option4: 'd) Compile time error'),
    QuestionConstructorCLevel3(
        cProgramLevel3Question: "2.#include <stdio.h>'"
            '\n'
            "int main(){"
            '\n'
            "char buf[12];"
            '\n'
            "stderr = stdin;"
            '\n'
            "fscanf(stderr, '%s', buf);"
            '\n'
            "printf('%s\n', buf);"
            '\n'
            "}"
            '\n',
        cProgramLevel3Option1: 'a) None of the mentioned',
        cProgramLevel3Option2: 'b) Whatever user types',
        cProgramLevel3Option3: 'c) Undefined behaviour',
        cProgramLevel3Option4: 'd) Compilation error'),
    QuestionConstructorCLevel3(
        cProgramLevel3Question: "3.#include <stdio.h>"
            '\n'
            "int main(){"
            '\n'
            "char c[] = 'GFG'"
            '\n'
            ";int i;"
            '\n'
            "for (i = 0; c[i]; i++) {"
            '\n'
            "printf('%c%c%c%c', c[i], *(c + i), *(i + c), i);}"
            '\n'
            "return (0);"
            '\n'
            "}"
            '\n',
        cProgramLevel3Option1: 'a)GFG',
        cProgramLevel3Option2: 'b) GGGFFFGGG',
        cProgramLevel3Option3: 'c) compile time error',
        cProgramLevel3Option4: 'd) No output'),
    QuestionConstructorCLevel3(
        cProgramLevel3Question: '4.#include <stdio.h>'
            '\n'
            'int main(void){'
            '\n'
            'int a;int b = 1;'
            '\n'
            'int x[5] = { 1, 2, 3, 4, 5 };'
            '\n'
            'a = 5 * 4 + x[b++] - (9 / b);'
            '\n'
            'printf("%d", a);return 0;'
            '\n'
            '}'
            '\n',
        cProgramLevel3Option1: 'a) No Output',
        cProgramLevel3Option2: 'b) 12',
        cProgramLevel3Option3: 'c) 20',
        cProgramLevel3Option4: 'd) 18'),
    QuestionConstructorCLevel3(
        cProgramLevel3Question: '5.#include <stdio.h>'
            '\n'
            'int main(){'
            '\n'
            'int x;x = 5 > 8 ? 10 : 1 != 2 < 5 ? 20 : 30;'
            '\n'
            'printf("Value of x:%d", x)'
            '\n'
            'return 0;'
            '}'
            '\n'
            '\n',
        cProgramLevel3Option1: 'a)Compile Time error',
        cProgramLevel3Option2: 'b)30',
        cProgramLevel3Option3: 'c)40',
        cProgramLevel3Option4: 'd)20'),
    QuestionConstructorCLevel3(
        cProgramLevel3Question:
            "6.What will be the output of following program?"
            '\n'
            "#include <stdio.h>"
            '\n'
            "int main(){"
            '\n'
            "int a = 36;int* ptr;ptr = &a;"
            '\n'
            "printf('%u %u', *&ptr, &*ptr);"
            '\n'
            "return 0;"
            '\n'
            "}"
            '\n',
        cProgramLevel3Option1: 'a) Value Address',
        cProgramLevel3Option2: 'b) Address Value',
        cProgramLevel3Option3: 'c) Address Address',
        cProgramLevel3Option4: 'd) Compilation error'),
    QuestionConstructorCLevel3(
        cProgramLevel3Question: '7.#include <stdio.h>'
            '\n'
            'int main(){'
            '\n'
            'unsigned int a = 0xffff;'
            '\n'
            'unsigned int k = ~a;'
            '\n'
            'printf("%d %d\n", a, k);'
            '\n'
            'return 0;'
            '\n'
            '}'
            '\n',
        cProgramLevel3Option1: 'a) -65535 65535',
        cProgramLevel3Option2: 'b) -65535 -65535',
        cProgramLevel3Option3: 'd) 65535 -65536',
        cProgramLevel3Option4: 'd)c) 65535 65535'),
    QuestionConstructorCLevel3(
        cProgramLevel3Question: '8.What is the output of following program?'
            '\n'
            '#include <stdio.h>'
            '\n'
            'void main(){'
            '\n'
            'int a = 25;'
            '\n'
            'printf("%o %x", a, a);'
            '\n'
            'getch();'
            '\n'
            '}'
            '\n',
        cProgramLevel3Option1: 'a)12 42',
        cProgramLevel3Option2: 'b) 25 25',
        cProgramLevel3Option3: 'c) 025 0x25',
        cProgramLevel3Option4: 'd)31 19'),
    QuestionConstructorCLevel3(
        cProgramLevel3Question:
            '9.Consider the code fragment written in C below :'
            '\n'
            'void f (int n){'
            '\n'
            'if (n <=1)  {'
            '\n'
            'printf ("%d", n);}'
            '\n'
            ' else {f (n/2);'
            '\n'
            'printf ("%d", n%2);'
            '\n'
            '}}'
            '\n',
        cProgramLevel3Option1: 'a)10110101',
        cProgramLevel3Option2: 'b)10101101',
        cProgramLevel3Option3: 'c)010110101',
        cProgramLevel3Option4: 'd)010101101'),
    QuestionConstructorCLevel3(
        cProgramLevel3Question:
            '10.fseek() should be preferred over rewind() mainly because',
        cProgramLevel3Option1: 'a)rewind() may fail for large files',
        cProgramLevel3Option2:
            'b)In rewind, there is no way to check if the operations completed successfully',
        cProgramLevel3Option3: "c)rewind() doesn't work for empty files",
        cProgramLevel3Option4: 'd)All of the above'),
  ];
  String level3CQuestions() {
    return questionsLevel3[questionNumberCLevel3].cProgramLevel3Question;
  }

  String level3COption1() {
    return questionsLevel3[questionNumberCLevel3].cProgramLevel3Option1;
  }

  String level3COption2() {
    return questionsLevel3[questionNumberCLevel3].cProgramLevel3Option2;
  }

  String level3COption3() {
    return questionsLevel3[questionNumberCLevel3].cProgramLevel3Option3;
  }

  String level3COption4() {
    return questionsLevel3[questionNumberCLevel3].cProgramLevel3Option4;
  }

  void level3QuestionCount() {
    if (questionNumberCLevel3 < questionsLevel3.length) {
      questionNumberCLevel3++;
    }
  }

  void level3QuestionSubtract() {
    if (questionNumberCLevel3 == 0) {
      questionNumberCLevel3 = 0;
    } else {
      questionNumberCLevel3--;
    }
  }

  int questionReset() {
    return questionNumberCLevel3 = 0;
  }

  int level3GetQuestionNumber() {
    return questionNumberCLevel3;
  }
}
