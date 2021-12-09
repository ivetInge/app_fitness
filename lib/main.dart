import 'package:flutter/material.dart';
import 'package:imc/features/presentation/pages/calculadora_imc/calculadora_imc.dart';


import 'features/presentation/pages/my_home.dart';
import 'features/presentation/pages/contador_pasos/contador_pasos.dart';

void main() {
  runApp(const MyCalculatorApp());
}

class MyCalculatorApp extends StatelessWidget {
  const MyCalculatorApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'Navigation', routes: {
      '/': (context) => const MyHome(),
      'First': (context) => const MyCalculator(),
      'Second': (context) => const MyApp(),//Deberia ir MyApp
    });
  }
}

class MyCalculator extends StatefulWidget {
  const MyCalculator({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() =>
      Calculadora(); //creamos la clase calculadora
}
