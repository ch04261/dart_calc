import 'package:math_expressions/math_expressions.dart';

double evalExpression(String expr) {
  ShuntingYardParser p = ShuntingYardParser();
  Expression exp = p.parse(expr);
  ContextModel cm = ContextModel();
  return exp.evaluate(EvaluationType.REAL, cm);
}

List<List<dynamic>> total = [[]];
int tlastindex = total.length - 1;
var result = 0;
String number = "";

void process(String number, List<List<dynamic>> total, int tlastindex) {
  tlastindex = total.length - 1; // 마지막 인덱스 계산
  number = total[tlastindex]
      .map((n) => n.toString())
      .toList()
      .join(""); // 리스트를 문자열로 합침
  total.removeAt(tlastindex); // 마지막 리스트 제거
  total.add([int.parse(number)]); // 합친 문자열을 정수로 변환하여 새 리스트에 추가
}

void enter() {
  process(number, total, tlastindex);
  String result = total
      .map((n) => n.toString())
      .toList()
      .join(""); // 숫자들을 문자열로 합침
  print(evalExpression(result)); // 수식 계산
}

void plus(List<List<dynamic>> total) {
  process(number, total, tlastindex);
  total.add(['+']); // '+' 연산자 추가
  total.add([]); // 새로운 리스트 추가
}

void minus(List<List<dynamic>> total) {
  process(number, total, tlastindex);
  total.add(['-']); // '-' 연산자 추가
  total.add([]); // 새로운 리스트 추가
}

void multiply(List<List<dynamic>> total) {
  process(number, total, tlastindex);
  total.add(['*']); // '*' 연산자 추가
  total.add([]); // 새로운 리스트 추가
}

void divide(List<List<dynamic>> total) {
  process(number, total, tlastindex);
  total.add(['/']); // '/' 연산자 추가
  total.add([]); // 새로운 리스트 추가
}

void one(List<List<dynamic>> total, int tlastindex) {
  tlastindex = total.length - 1;
  total[tlastindex].add(1); // 마지막 리스트에 숫자 1 추가
}

void main() {
  print(total);
}
