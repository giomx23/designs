import 'dart:math';

import 'package:flutter/material.dart';


class Background extends StatelessWidget {
  const Background({super.key});
  final boxDecoration = const BoxDecoration(
    gradient: LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      stops: [0.4,0.8],
      colors: [
        Color(0xff2E305F),
        Color(0xff202333)
        ]
      )
    );

  @override
  Widget build(BuildContext context) {
    return Stack(
      children:[
        //PURPLE GRADIENT
        Container(decoration: boxDecoration),

        //PINK BOX
        const Positioned(
          top: -100,
          child: _PinkBox()
        ),

      ]
    );
  }
}

class _PinkBox extends StatelessWidget {
  const _PinkBox();

  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: -pi / 4,
      child: Container(
        width: 305,
        height: 305,
        decoration: BoxDecoration(
          color: Colors.pink,
          borderRadius: BorderRadius.circular(50),
          gradient: const LinearGradient(
            colors:
            [
              Color.fromRGBO(236, 98, 188, 1),
              Color.fromRGBO(241, 142, 172, 1),
            ]
          )
        ),
      ),
    );
  }
}