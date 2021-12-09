import 'package:flutter/material.dart';
import 'package:imc/features/presentation/pages/contador_pasos/contador_pasos.dart';
import 'package:imc/main.dart';

class MyHome extends StatefulWidget {
  const MyHome({Key? key}) : super(key: key);

  @override
  _MyHomeState createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bienvenidos App Fitness'),
        backgroundColor: const Color(0xfff01dfd),
      ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/background.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: const Color(0xfff01dfd)),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const MyCalculator()));
                  },
                  child: const Text('Calcular tu IMC')),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: const Color(0xfff01dfd)),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => const MyApp()));
                  },
                  child: const Text('Contar tus pasos'))
            ],
          ),
        ),
      ),
    );
  }
}
