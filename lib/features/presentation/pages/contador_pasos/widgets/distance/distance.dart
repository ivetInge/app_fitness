import 'package:flutter/material.dart';

class ImagenesApp extends StatelessWidget {
  const ImagenesApp({
    Key? key,
    required String km,
  }) : _km = km, super(key: key);

  final String _km;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 80,
      height: 100,
      padding: const EdgeInsets.only(left: 25.0, top: 10.0, bottom: 10.0),
      color: Colors.transparent,
      child: Row(
        children: <Widget>[
          Card(
            child: Container(
              height: 80.0,
              width: 80.0,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/distance.png"),
                  fit: BoxFit.fitWidth,
                  alignment: Alignment.topCenter,
                ),
              ),
              child: Text(
                "$_km Km",
                textAlign: TextAlign.right,
                style: const TextStyle(
                    fontWeight: FontWeight.bold, fontSize: 14.0),
              ),
            ),
            color: Colors.white54,
          ),
          const VerticalDivider(
            width: 20.0,
          ),
          Card(
            child: Container(
              height: 80.0,
              width: 80.0,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/burned.png"),
                  fit: BoxFit.fitWidth,
                  alignment: Alignment.topCenter,
                ),
              ),
            ),
            color: Colors.transparent,
          ),
          const VerticalDivider(
            width: 20.0,
          ),
          Card(
            child: Container(
              height: 80.0,
              width: 80.0,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/step.png"),
                  fit: BoxFit.fitWidth,
                  alignment: Alignment.topCenter,
                ),
              ),
            ),
            color: Colors.transparent,
          ),
        ],
      ),
    );
  }
}