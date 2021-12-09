import 'package:flutter/material.dart';

class StepCounterData extends StatelessWidget {
  const StepCounterData({
    Key? key,
    required String stepCountValue,
  }) : _stepCountValue = stepCountValue, super(key: key);

  final String _stepCountValue;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 10.0),
      child: Card(
        child: Text(
          "$_stepCountValue Steps",
          textAlign: TextAlign.right,
          style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 14.0,
              color: Colors.white),
        ),
        color: Colors.black,
      ),
    );
  }
}