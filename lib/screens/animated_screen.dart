import 'dart:math' show Random;

import 'package:flutter/material.dart';

class AnimatedScreen extends StatefulWidget {

  const AnimatedScreen({super.key});

  @override
  State<AnimatedScreen> createState() => _AnimatedScreenState();
}

class _AnimatedScreenState extends State<AnimatedScreen> {

  double _width= 50;
  double _height= 50;
  Color _color = Colors.teal;
  BorderRadiusGeometry _borderRadius = BorderRadius.circular(10);

  void onChangeShape() {
    final random = Random();
    // _width += 100;
    // el Int me permide dfinir desde 0 hasta una posicion maxima
    _width = random.nextInt(300).toDouble()+70;
    // _height += 100;
    _height = random.nextInt(300).toDouble()+70;
    // _color = Colors.blueGrey;
    _color = Color.fromRGBO(
      // 255 por que va de 0 a 255 los colores
      random.nextInt(255),
      random.nextInt(255),
      random.nextInt(255),
      1);
    // _borderRadius = BorderRadius.circular(20);
    // nextInt(100) ponemos 100 por que el maximo de la curvatura del border 100 seria totalmente circular
    _borderRadius = BorderRadius.circular(random.nextInt(100).toDouble() + 10);

    setState(() {});//le dice a flutter ,hey flutter cambiaron propiedades asi que redibuja el widget
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        centerTitle: true,
        title: const Text('Animated Container'),
      ),
      body: Center(
        //un container se puede ver como un div de html
        child: Container(
          // width: 100,
          width: _width,
          // height: 100,
          height: _height,
          // solo se puede tener o bien el "color" o bien el "decoration" pero no ambos
          // color: Colors.red,
          decoration: BoxDecoration(
            // color: Colors.teal,
            color: _color,
            // borderRadius:BorderRadius.circular(20)
            borderRadius: _borderRadius
          ),
        ),
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: onChangeShape,
        child: const Icon(Icons.play_circle_outline_rounded, size: 35,),
        // onPressed: () => Navigator.pop(context),
      ),
    );
  }
}