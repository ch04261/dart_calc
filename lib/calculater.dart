import 'package:flutter/material.dart';

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
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color.fromARGB(255, 229, 34, 8),
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
  int _counter = 0;

  void _counterplus() {
    setState(() {
      _counter = _counter + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(
          widget.title,
          style: TextStyle(
            fontSize: 50,
            color: const Color.fromARGB(128, 248, 65, 9),
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            width: 400,
            height: 200,
            padding: EdgeInsets.all(10), // 내부 여백 추가
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 175, 181, 185), // 배경색
              borderRadius: BorderRadius.circular(10), // 모서리 둥글게
            ),
            child: _counter,
          ),
          Row(
            //7,8,9 가로줄
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                width: 75,
                height: 75,
                padding: EdgeInsets.all(10), // 내부 여백 추가
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 183, 193, 201), // 배경색
                  shape: BoxShape.circle, // 모서리 둥글게
                ),
                child: Center(
                  child: Text(
                    "0",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: const Color.fromARGB(255, 8, 8, 8),
                    ),
                  ),
                ),
              ),
              Container(
                width: 75,
                height: 75,
                padding: EdgeInsets.all(10), // 내부 여백 추가
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 183, 193, 201), // 배경색
                  shape: BoxShape.circle, // 모서리 둥글게
                ),
                child: Center(
                  child: Text(
                    "0",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: const Color.fromARGB(255, 8, 8, 8),
                    ),
                  ),
                ),
              ),
              Container(
                width: 75,
                height: 75,
                padding: EdgeInsets.all(10), // 내부 여백 추가
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 183, 193, 201), // 배경색
                  shape: BoxShape.circle, // 모서리 둥글게
                ),
                child: Center(
                  child: Text(
                    "0",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: const Color.fromARGB(255, 8, 8, 8),
                    ),
                  ),
                ),
              ),
              Container(
                width: 75,
                height: 75,
                padding: EdgeInsets.all(10), // 내부 여백 추가
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 183, 193, 201), // 배경색
                  shape: BoxShape.circle, // 모서리 둥글게
                ),
                child: Center(
                  child: Text(
                    "0",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: const Color.fromARGB(255, 8, 8, 8),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Row(
            //7,8,9 가로줄
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                width: 75,
                height: 75,
                padding: EdgeInsets.all(10), // 내부 여백 추가
                decoration: BoxDecoration(
                  color: Colors.blue, // 배경색
                  shape: BoxShape.circle, // 모서리 둥글게
                ),
                child: Text("7", style: TextStyle(color: Colors.white)),
              ),
              Container(
                width: 75,
                height: 75,
                padding: EdgeInsets.all(10), // 내부 여백 추가
                decoration: BoxDecoration(
                  color: Colors.blue, // 배경색
                  shape: BoxShape.circle, // 모서리 둥글게
                ),
                child: Text("8", style: TextStyle(color: Colors.white)),
              ),
              Container(
                width: 75,
                height: 75,
                padding: EdgeInsets.all(10), // 내부 여백 추가
                decoration: BoxDecoration(
                  color: Colors.blue, // 배경색
                  shape: BoxShape.circle, // 모서리 둥글게
                ),
                child: Text("9", style: TextStyle(color: Colors.white)),
              ),
              Container(
                width: 75,
                height: 75,
                padding: EdgeInsets.all(10), // 내부 여백 추가
                decoration: BoxDecoration(
                  color: Colors.blue, // 배경색
                  shape: BoxShape.circle, // 모서리 둥글게
                ),
                child: Text("X", style: TextStyle(color: Colors.white)),
              ),
            ],
          ),
          Row(
            //4,5,6 가로줄줄
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                width: 75,
                height: 75,
                padding: EdgeInsets.all(10), // 내부 여백 추가
                decoration: BoxDecoration(
                  color: Colors.blue, // 배경색
                  shape: BoxShape.circle, // 모서리 둥글게
                ),
                child: Text("4", style: TextStyle(color: Colors.white)),
              ),
              Container(
                width: 75,
                height: 75,
                padding: EdgeInsets.all(10), // 내부 여백 추가
                decoration: BoxDecoration(
                  color: Colors.blue, // 배경색
                  shape: BoxShape.circle, // 모서리 둥글게
                ),
                child: Text("5", style: TextStyle(color: Colors.white)),
              ),
              Container(
                width: 75,
                height: 75,
                padding: EdgeInsets.all(10), // 내부 여백 추가
                decoration: BoxDecoration(
                  color: Colors.blue, // 배경색
                  shape: BoxShape.circle, // 모서리 둥글게
                ),
                child: Text("6", style: TextStyle(color: Colors.white)),
              ),
              Container(
                width: 75,
                height: 75,
                padding: EdgeInsets.all(10), // 내부 여백 추가
                decoration: BoxDecoration(
                  color: Colors.blue, // 배경색
                  shape: BoxShape.circle, // 모서리 둥글게
                ),
                child: Text("-", style: TextStyle(color: Colors.white)),
              ),
            ],
          ),
          Row(
            //1,2,3 가로줄줄
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                width: 75,
                height: 75,
                padding: EdgeInsets.all(10), // 내부 여백 추가
                decoration: BoxDecoration(
                  color: Colors.blue, // 배경색
                  shape: BoxShape.circle, // 모서리 둥글게
                ),
                child: Text("3", style: TextStyle(color: Colors.white)),
              ),
              Container(
                width: 75,
                height: 75,
                padding: EdgeInsets.all(10), // 내부 여백 추가
                decoration: BoxDecoration(
                  color: Colors.blue, // 배경색
                  shape: BoxShape.circle, // 모서리 둥글게
                ),
                child: Text("2", style: TextStyle(color: Colors.white)),
              ),
              Container(
                width: 75,
                height: 75,
                padding: EdgeInsets.all(10), // 내부 여백 추가
                decoration: BoxDecoration(
                  color: Colors.blue, // 배경색
                  shape: BoxShape.circle, // 모서리 둥글게
                ),
                child: Text("1", style: TextStyle(color: Colors.white)),
              ),
              Container(
                width: 75,
                height: 75,
                padding: EdgeInsets.all(10), // 내부 여백 추가
                decoration: BoxDecoration(
                  color: Colors.blue, // 배경색
                  shape: BoxShape.circle, // 모서리 둥글게
                ),
                child: Text("+", style: TextStyle(color: Colors.white)),
              ),
            ],
          ),
          Row(
            //7,8,9 가로줄
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                width: 75,
                height: 75,
                padding: EdgeInsets.all(10), // 내부 여백 추가
                decoration: BoxDecoration(
                  color: Colors.blue, // 배경색
                  shape: BoxShape.circle, // 모서리 둥글게
                ),
                child: Text("", style: TextStyle(color: Colors.white)),
              ),
              Container(
                width: 75,
                height: 75,
                padding: EdgeInsets.all(10), // 내부 여백 추가
                decoration: BoxDecoration(
                  color: Colors.blue, // 배경색
                  shape: BoxShape.circle, // 모서리 둥글게
                ),
                child: Text("0", style: TextStyle(color: Colors.white)),
              ),
              Container(
                width: 75,
                height: 75,
                padding: EdgeInsets.all(10), // 내부 여백 추가
                decoration: BoxDecoration(
                  color: Colors.blue, // 배경색
                  shape: BoxShape.circle, // 모서리 둥글게
                ),
                child: Text(".", style: TextStyle(color: Colors.white)),
              ),
              Container(
                width: 75,
                height: 75,
                padding: EdgeInsets.all(10), // 내부 여백 추가
                decoration: BoxDecoration(
                  color: Colors.blue, // 배경색
                  shape: BoxShape.circle, // 모서리 둥글게
                ),
                child: Text("=", style: TextStyle(color: Colors.white)),
              ),
            ],
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
