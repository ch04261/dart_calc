import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';

double evalExpression(String expr) {
  ShuntingYardParser p = ShuntingYardParser();
  Expression exp = p.parse(expr);
  ContextModel cm = ContextModel();
  return exp.evaluate(EvaluationType.REAL, cm);
}

List<dynamic> total = [[]];
int tlastindex = total.length - 1;
var result = 0;
double result2 = 0;
void setstate()

void process() {
  tlastindex = total.length - 1; // 마지막 인덱스 계산
  String number = total[tlastindex]
      .map((n) => n.toString())
      .toList()
      .join(""); // 리스트를 문자열로 합침
  int number2 = int.parse(number);
  total.removeAt(tlastindex); // 마지막 리스트 제거

  total.add(number2);
}

void enter() {
  process();
  String result = total
      .map((n) => n.toString())
      .toList()
      .join(""); // 숫자들을 문자열로 합침
  result2 = evalExpression(result); // 수식 계산
  //print(evalExpression(result)); // 수식 계산
}
void delete(){
  total = [[]];
}
void plus() {
  process();
  total.add('+'); // '+' 연산자 추가
  total.add([]); // 새로운 리스트 추가
}

void minus() {
  process();
  total.add('-'); // '-' 연산자 추가
  total.add([]); // 새로운 리스트 추가
}

void multiply() {
  process();
  total.add('*'); // '*' 연산자 추가
  total.add([]); // 새로운 리스트 추가
}

void divide() {
  process();
  total.add('/'); // '/' 연산자 추가
  total.add([]); // 새로운 리스트 추가
}

void number_make(int num) {
  tlastindex = total.length - 1;
  total[tlastindex].add(num); // 마지막 리스트에 숫자 num 추가
}


void main() {
  number_make(1);
  plus();
  number_make(1);
  enter();
  print(total);
}
