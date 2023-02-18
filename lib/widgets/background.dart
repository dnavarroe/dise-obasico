import 'dart:math';

import 'package:flutter/material.dart';


class Background extends StatelessWidget {
  const Background({super.key});

  final boxDecoration =  const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          stops: [0.1,0.9],
          colors: [
            Color(0xff42e695),
            Color(0xff5ab2b8),
            
          ])
      );

  @override
  Widget build(BuildContext context) {
    
    return Stack(
      children:[ 
      //Fondo rosa
      Container(decoration: boxDecoration,),
      //Caja
      const Positioned(
        top: -100,
        left: -30,
        child: _Box()
        ) 

    
    ]);
  }
}

class _Box extends StatelessWidget {
  const _Box({super.key});

  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: -pi / 5.0,
      child: Container(
        width: 350,
        height: 350,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(70),
          gradient: const LinearGradient(
            colors: [
              Color(0xff13f1fc),
              Color(0xff0470dc)
            ])
        ),
      ),
    );
  }
}