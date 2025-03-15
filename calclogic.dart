import 'package:math_expressions/math_expressions.dart';

double evalExpression(String expr) {
  ShuntingYardParser p = ShuntingYardParser();
  Expression exp = p.parse(expr);
  ContextModel cm = ContextModel();
  return exp.evaluate(EvaluationType.REAL, cm);
}

var total = List.empty();
int tlastindex = total.length - 1;
var result = 0;
String number = "";
void process(number, total, tlastinedex) {
  tlastindex = total.length - 1;
  String number = total[tlastindex].map((n) => n.toString()).toList().join("");
  total.removeAt(tlastinedex);
  total.add(int.parse(number));
}

void enter(result, total, tlastindex) {
  process(number, total, tlastindex);
  result = total.map((n) => n.toString()).toList().join("");
  print(evalExpression(result));
}

void plus(total) {
  process(number, total, tlastindex);
  total.append('+');
  total.append([]);
}

void minus(total) {
  process(number, total, tlastindex);
  total.append('-');
  total.append([]);
}

void multiply(total) {
  process(number, total, tlastindex);
  total.append('*');
  total.append([]);
}

void divide(total) {
  process(number, total, tlastindex);
  total.append('/');
  total.append([]);
}

void one(total, tlastindex) {
  tlastindex = total.length - 1;
  total[tlastindex].add(1);
}

void main() {
  one(total, tlastindex);
  plus(total);
  one(total, tlastindex);
  enter(result, total, tlastindex);
  print(total);
}
