import 'package:flutter/material.dart';

import 'calories_data/calories_data.dart';
import 'km_data/km_data.dart';
import 'step_counter_data/step_counter_data.dart';

class DatosApp extends StatelessWidget {
  const DatosApp({
    Key? key,
    required String km,
    required String calories,
    required String stepCountValue,
  }) : _km = km, _calories = calories, _stepCountValue = stepCountValue, super(key: key);

  final String _km;
  final String _calories;
  final String _stepCountValue;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 2.0),
      width: 150, //ancho
      height: 30, //largo tambien por numero height: 300
      color: Colors.transparent,
      child: Row(
        children: <Widget>[
          KmData(km: _km),
          const VerticalDivider(
            width: 20.0,
          ),
          CaloriesData(calories: _calories),
          const VerticalDivider(
            width: 5.0,
          ),
          StepCounterData(stepCountValue: _stepCountValue),
        ],
      ),
    );
  }
}





