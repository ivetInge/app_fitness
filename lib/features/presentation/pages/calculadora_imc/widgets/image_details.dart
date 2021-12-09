import 'package:flutter/material.dart';

class ImageDetails extends StatelessWidget {
  const ImageDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(2.0),
      child: Stack(
        children: const <Widget>[
          Align(
            child: Image(
              width: 300.0,
              height: 200.0,
              image: AssetImage('assets/images/imcx.png'),
            ),
          )
        ],
      ),
    );
  }
}
