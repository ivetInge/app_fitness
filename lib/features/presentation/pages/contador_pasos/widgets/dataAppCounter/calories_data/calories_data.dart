import 'package:flutter/material.dart';

class CaloriesData extends StatelessWidget {
  const CaloriesData({
    Key? key,
    required String calories,
  }) : _calories = calories, super(key: key);

  final String _calories;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 10.0),
      child: Card(
        child: Text(
          "$_calories kCal",
          textAlign: TextAlign.right,
          style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 14.0,
              color: Colors.white),
        ),
        color: Colors.red,
      ),
    );
  }
}