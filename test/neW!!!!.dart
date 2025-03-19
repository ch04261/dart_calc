import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';

double evalExpression(String expr) {
  ShuntingYardParser p = ShuntingYardParser();
  Expression exp = p.parse(expr);
  ContextModel cm = ContextModel();
  return exp.evaluate(EvaluationType.REAL, cm);
}

String result = "";
double Realresult = 0;

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
}

void backspace() {
  result = result.substring(0, result.length - 1);
}

void enter() {
   Realresult = evalExpression(result);
}
