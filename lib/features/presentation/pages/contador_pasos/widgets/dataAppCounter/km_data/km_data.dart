import 'package:flutter/material.dart';

class KmData extends StatelessWidget {
  const KmData({
    Key? key,
    required String km,
  }) : _km = km, super(key: key);

  final String _km;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 40.0),
      child: Card(
        child: Text(
          "$_km Km",
          textAlign: TextAlign.right,
          style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 14.0,
              color: Colors.white),
        ),
        color: Colors.purple,
      ),
    );
  }
}