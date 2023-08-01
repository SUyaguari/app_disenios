import 'dart:math';

import 'package:flutter/material.dart';

class Background extends StatelessWidget {
  
    final boxDecoration = const BoxDecoration(
         gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          stops: [0.2, 0.8],
          colors: [
            Color(0xff363469),
            Color(0xff24263b)
          ]
        )
      );

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
          //gradien purple
        Container(
          decoration: boxDecoration,
        ),

        //Pink box
        Positioned(
          top: -90,
          left: -45,
          child: _PinkBox()
        )
      ],
    );
  }
}

class _PinkBox extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: -pi / 5,
      child: Container(
        width: 350,
        height: 350,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(80),
          gradient: const LinearGradient(
            colors: [
              Color(0xffc45c63),
              Color(0xfffa99a3),
            ]
          )
        ),
      ),
    );
  }
}