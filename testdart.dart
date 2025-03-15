import 'package:math_expressions/math_expressions.dart';

double evalExpression(String expr) {
  ShuntingYardParser p = ShuntingYardParser();
  Expression exp = p.parse(expr);
  ContextModel cm = ContextModel();
  return exp.evaluate(EvaluationType.REAL, cm);
}

String result = "2+2*4";

void main() {
  print(evalExpression(result));
}
