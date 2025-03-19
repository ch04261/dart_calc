import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';

double evalExpression(String expr) {
  ShuntingYardParser p = ShuntingYardParser();
  Expression exp = p.parse(expr);
  ContextModel cm = ContextModel();
  return exp.evaluate(EvaluationType.REAL, cm);
}

String result = "";
double realresult = 0;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'calculater',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.black,
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color.fromARGB(255, 100, 98, 98),
            foregroundColor: const Color.fromARGB(255, 202, 190, 190),

            shape: CircleBorder(),
            padding: EdgeInsets.all(10),
            textStyle: TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.bold, // 폰트 굵기 (볼드)
              //fontStyle: FontStyle.italic, // 기울임꼴
              color: const Color.fromARGB(167, 10, 49, 110),
            ), // 텍스트 색상,
            fixedSize: Size(80, 80),
          ),
        ),
      ),
      home: const MyHomePage(title: 'calculater'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  void number_make(String num) {
    result = result + num;
    setState(() {});
  }

  void plus() {
    result = result + "+";
    setState(() {});
  }

  void minus() {
    result = result + "-";
    setState(() {});
  }

  void multi() {
    result = result + "*";
    setState(() {});
  }

  void divide() {
    result = result + "/";
    setState(() {});
  }

  void delete() {
    result = "";
    realresult = 0;
    setState(() {});
  }

  void backspace() {
    result = result.substring(0, result.length - 1);
    setState(() {});
  }

  void enter() {
    realresult = evalExpression(result);
    setState(() {});
  }

  String prettier(String input) {
    String temp = input.replaceAll('*', '×');
    return temp.replaceAll('/', '÷');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: null,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center, // 수직 정렬
        crossAxisAlignment: CrossAxisAlignment.center, // 가로 정렬
        children: [
          SizedBox(height: 120),
          Container(
            width: 400, // 폭
            height: 80, // 높이
            color: const Color.fromARGB(0, 241, 12, 88), // 박스 색상
            child: Text(
              prettier(result),
              textAlign: TextAlign.right,
              style: TextStyle(
                color: const Color.fromARGB(255, 202, 190, 190),
                fontSize: 50,
              ),
            ), // 자식 위젯
          ),
          SizedBox(height: 20),
          Container(
            width: 400, // 폭
            height: 80, // 높이
            color: const Color.fromARGB(0, 217, 16, 83), // 박스 색상
            child: Text(
              realresult.toString(),
              textAlign: TextAlign.right,
              style: TextStyle(
                color: const Color.fromARGB(255, 202, 190, 190),
                fontSize: 50,
              ),
            ),
            // 자식 위젯
          ),

          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center, // 수직 정렬
            crossAxisAlignment: CrossAxisAlignment.center, // 가로 정렬
            children: [
              ElevatedButton(
                onPressed: () {
                  delete();
                },
                child: Text('AC'),
              ),
              SizedBox(width: 20),
              ElevatedButton(onPressed: () {}, child: Text('')),
              SizedBox(width: 20),
              ElevatedButton(
                onPressed: () {
                  backspace();
                },
                child: Text('C'),
              ),
              SizedBox(width: 20),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 5, 14, 98),
                ),
                onPressed: () {
                  divide();
                },
                child: Text('÷'),
              ),
            ],
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center, // 수직 정렬
            crossAxisAlignment: CrossAxisAlignment.center, // 가로 정렬
            children: [
              ElevatedButton(
                onPressed: () {
                  number_make('7');
                },
                child: Text('7'),
              ),
              SizedBox(width: 20),
              ElevatedButton(
                onPressed: () {
                  number_make('8');
                },
                child: Text('8'),
              ),
              SizedBox(width: 20),
              ElevatedButton(
                onPressed: () {
                  number_make('9');
                },
                child: Text('9'),
              ),
              SizedBox(width: 20),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 5, 14, 98),
                ),
                onPressed: () {
                  multi();
                },
                child: Text('×'),
              ),
            ],
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center, // 수직 정렬
            crossAxisAlignment: CrossAxisAlignment.center, // 가로 정렬
            children: [
              ElevatedButton(
                onPressed: () {
                  number_make('4');
                },
                child: Text('4'),
              ),
              SizedBox(width: 20),
              ElevatedButton(
                onPressed: () {
                  number_make('5');
                },
                child: Text('5'),
              ),
              SizedBox(width: 20),
              ElevatedButton(
                onPressed: () {
                  number_make('6');
                },
                child: Text('6'),
              ),
              SizedBox(width: 20),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 5, 14, 98),
                ),
                onPressed: () {
                  minus();
                },
                child: Text('-'),
              ),
            ],
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center, // 수직 정렬
            crossAxisAlignment: CrossAxisAlignment.center, // 가로 정렬
            children: [
              ElevatedButton(
                onPressed: () {
                  number_make('1');
                },
                child: Text('1'),
              ),
              SizedBox(width: 20),
              ElevatedButton(
                onPressed: () {
                  number_make('2');
                },
                child: Text('2'),
              ),
              SizedBox(width: 20),
              ElevatedButton(
                onPressed: () {
                  number_make('3');
                },
                child: Text('3'),
              ),
              SizedBox(width: 20),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 5, 14, 98),
                ),
                onPressed: () {
                  plus();
                },
                child: Text('+'),
              ),
            ],
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center, // 수직 정렬
            crossAxisAlignment: CrossAxisAlignment.center, // 가로 정렬
            children: [
              ElevatedButton(onPressed: () {}, child: Text('')),
              SizedBox(width: 20),
              ElevatedButton(
                onPressed: () {
                  number_make('0');
                },
                child: Text('0'),
              ),
              SizedBox(width: 20),
              ElevatedButton(onPressed: () {}, child: Text('')),
              SizedBox(width: 20),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 5, 14, 98),
                ),
                onPressed: () {
                  enter();
                },
                child: Text('='),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
