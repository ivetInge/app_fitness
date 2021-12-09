import 'package:flutter/material.dart';

class HeightRecommended extends StatelessWidget {
  // ignore: prefer_typing_uninitialized_variables
  final pesoSugerido;

  const HeightRecommended(this.pesoSugerido, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50.0,
      width: 300,
      decoration: const BoxDecoration(
          gradient:
              LinearGradient(colors: [Color(0xFF04B4AE), Color(0xFF81F7F3)]),
          borderRadius: BorderRadius.all(Radius.circular(15))),
      //creamos resultador del TextFormField
      child: Center(
        child: Text(
          pesoSugerido,
          style: const TextStyle(
            fontSize: 20.0,
          ),
        ),
      ),
    );
  }
}
