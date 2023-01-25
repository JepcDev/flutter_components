import 'package:flutter/material.dart';

class Listview1Screen extends StatelessWidget {

  final options = const['Megaman', 'Metal Gear', 'Super Smash', 'Final Fantasy'];
  const Listview1Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Listview Tipo 1'),
      ),
      // Lista de widgets
      // Un ListView en su children aguanta cualquier widget
      // Flutter por defecto ya tiene un widget que genera las opciones similar a una lista de contactos ListTile
      body: ListView(
        children: [
          // Text('Hola mundo'),
          // Lo que esta haciendo es tomando cada uno de los elementos y transformandolos a lo que se retorne del map
          // Lo que regresa el mas es un iterable algo que puede ser iterado
          // Lo que hace el operador spread es extraer cada elemento de una lista y mostrar el widget
          ...options.map(
            (game) => ListTile(
              leading: const Icon(Icons.gamepad_outlined),
              title: Text(game),
              trailing: const Icon(Icons.arrow_forward_ios_rounded),
            )
          ).toList(),
          // El divider es un widget que hace separaciones entre widgets
          Divider(),
          // ListTile(
          //   leading: Icon(Icons.account_circle_rounded),
          //   title: Text('Hola mundo'),
          // )
        ],
      )
    );
  }
}