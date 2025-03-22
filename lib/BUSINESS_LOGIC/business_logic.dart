import 'package:math_expressions/math_expressions.dart';

double evalExpression(String expr) {
  ShuntingYardParser p = ShuntingYardParser();
  Expression exp = p.parse(expr);
  ContextModel cm = ContextModel();
  return exp.evaluate(EvaluationType.REAL, cm);
}
  String result = "";
  double realresult = 0;


class Calculater_logic {

  void number_make(String num) {
    result = result + num;
  }

  void plus() {
    result = result + "+";
  }

  void minus() {
    result = result + "-";
  }

  void multi() {
    result = result + "*";
  }

  void divide() {
    result = result + "/";
  }

  void delete() {
    result = "";
    realresult = 0;
  }

  void backspace() {
    result = result.substring(0, result.length - 1);
  }

  void enter() {
    realresult = evalExpression(result);
  }

  String prettier(String input) {
    String temp = input.replaceAll('*', '×');
    return temp.replaceAll('/', '÷');
  }
}