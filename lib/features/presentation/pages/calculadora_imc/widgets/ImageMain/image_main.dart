import 'package:flutter/material.dart';

class ImageMain extends StatelessWidget {
  const ImageMain({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 500,
      height: 130,
      decoration: const BoxDecoration(
        color: Color(0xff01dfd7),
        borderRadius: BorderRadius.only(
            bottomRight: Radius.circular(80), bottomLeft: Radius.circular(80)),
      ),
      child: Stack(
        children: const <Widget>[
          Align(
            alignment: Alignment.center,
            child: Image(
              width: 200.0,
              height: 150.0,
              image: AssetImage('assets/images/scale.png'),
            ),
          )
        ],
      ),
    );
  }
}
