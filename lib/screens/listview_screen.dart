import 'package:flutter/material.dart';

class Listview1Screen extends StatelessWidget {

  const Listview1Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Listview Tipo 1'),
      ),
      // Lista de widgets
      body: ListView(
        children: const[
          Text('Hola mundo'),
          Text('Hola mundo'),
          Text('Hola mundo'),
          Text('Hola mundo'),
          Text('Hola mundo'),
        ],
      )
    );
  }
}