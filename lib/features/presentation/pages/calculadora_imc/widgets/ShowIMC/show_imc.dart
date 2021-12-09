import 'package:flutter/material.dart';

class ShowIMC extends StatelessWidget {
  // ignore: prefer_typing_uninitialized_variables
  final muestreIMC;

  const ShowIMC(this.muestreIMC, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50.0,
      width: 300,
      decoration: const BoxDecoration(
          gradient:
              LinearGradient(colors: [Color(0xFFFE2E64), Color(0xFFF781D8)]),
          borderRadius: BorderRadius.all(Radius.circular(15))),
      //creamos resultado del TextFormField
      child: Center(
        child: Text(
          muestreIMC,
          style: const TextStyle(
            fontSize: 20.0,
          ),
        ),
      ),
    );
  }
}
