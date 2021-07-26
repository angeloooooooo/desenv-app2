import 'package:flutter/material.dart';
import 'package:primeiro_exemplo/Calculadora.dart';

void main() {
  runApp(CalculadoraSimples());
}

class CalculadoraSimples extends StatelessWidget {
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: "Calculadora Simples",
      theme: new ThemeData(primarySwatch: Colors.grey),
      home: new Calculadora(),
    );
  }
}
