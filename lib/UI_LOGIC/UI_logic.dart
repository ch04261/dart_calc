import 'package:flutter/material.dart';
import '../BUSINESS_LOGIC/business_logic.dart';

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
  
  void update_UI() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    Calculater_logic calcL = Calculater_logic();
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
              calcL.prettier(result),
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
                  calcL.delete();
                  update_UI();
                },
                child: Text('AC'),
              ),
              SizedBox(width: 20),
              ElevatedButton(onPressed: () {}, child: Text('')),
              SizedBox(width: 20),
              ElevatedButton(
                onPressed: () {
                  calcL.backspace();
                  update_UI();
                },
                child: Text('C'),
              ),
              SizedBox(width: 20),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 5, 14, 98),
                ),
                onPressed: () {
                 calcL.divide();
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
                  calcL.number_make('7');
                  update_UI();
                },
                child: Text('7'),
              ),
              SizedBox(width: 20),
              ElevatedButton(
                onPressed: () {
                  calcL.number_make('8');
                  update_UI();
                },
                child: Text('8'),
              ),
              SizedBox(width: 20),
              ElevatedButton(
                onPressed: () {
                  calcL.number_make('9');
                  update_UI();
                },
                child: Text('9'),
              ),
              SizedBox(width: 20),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 5, 14, 98),
                ),
                onPressed: () {
                  calcL.multi();
                  update_UI();
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
                  calcL.number_make('4');
                  update_UI();
                },
                child: Text('4'),
              ),
              SizedBox(width: 20),
              ElevatedButton(
                onPressed: () {
                  calcL.number_make('5');
                  update_UI();
                },
                child: Text('5'),
              ),
              SizedBox(width: 20),
              ElevatedButton(
                onPressed: () {
                  calcL.number_make('6');
                  update_UI();
                },
                child: Text('6'),
              ),
              SizedBox(width: 20),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 5, 14, 98),
                ),
                onPressed: () {
                  calcL.minus();
                  update_UI();
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
                  calcL.number_make('1');
                  update_UI();
                },
                child: Text('1'),
              ),
              SizedBox(width: 20),
              ElevatedButton(
                onPressed: () {
                  calcL.number_make('2');
                  update_UI();
                },
                child: Text('2'),
              ),
              SizedBox(width: 20),
              ElevatedButton(
                onPressed: () {
                  calcL.number_make('3');
                  update_UI();
                },
                child: Text('3'),
              ),
              SizedBox(width: 20),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 5, 14, 98),
                ),
                onPressed: () {
                  calcL.plus();
                  update_UI();
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
                  calcL.number_make('0');
                  update_UI();
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
                  calcL.enter();
                  update_UI();
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
