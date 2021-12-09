import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class RuedaContador extends StatelessWidget {
  const RuedaContador({
    Key? key,
    required String stepCountValue,
  }) : _stepCountValue = stepCountValue, super(key: key);

  final String _stepCountValue;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 10.0),
      width: 250, //ancho
      height: 250, //largo tambien por numero height: 300
      decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment
                .bottomCenter, //cambia la iluminacion del degradado
            end: Alignment.topCenter,
            colors: [Color(0xFFA9F5F2), Color(0xFFffffff)],
          ),
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(27.0),
            bottomRight: Radius.circular(27.0),
            topLeft: Radius.circular(27.0),
            topRight: Radius.circular(27.0),
          )),
      child: CircularPercentIndicator(
        radius: 200.0,
        lineWidth: 13.0,
        animation: true,
        center: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              height: 50,
              width: 50,
              padding: const EdgeInsets.only(left: 20.0),
              child: const Icon(
                FontAwesomeIcons.walking,
                size: 30.0,
                color: Colors.white,
              ),
            ),
            Text(
              _stepCountValue,
              style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20.0,
                  color: Colors.purpleAccent),
            ),
          ],
        ),
        percent: 0.217,
        //percent: _convert,
        footer: Text(
          "Pasos:  $_stepCountValue",
          style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 12.0,
              color: Colors.purple),
        ),
        circularStrokeCap: CircularStrokeCap.round,
        progressColor: Colors.purpleAccent,
      ),
    );
  }
}