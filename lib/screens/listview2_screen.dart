import 'package:flutter/material.dart';

class Listview2Screen extends StatelessWidget {
  final options = const [
    'Megaman',
    'Metal Gear',
    'Super Smash',
    'Final Fantasy'
  ];
  const Listview2Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Listview Tipo 2'),
      ),
      // Lista de widgets
      // Un ListView en su children aguanta cualquier widget
      // Flutter por defecto ya tiene un widget que genera las opciones similar a una lista de contactos ListTile
      // Se usa el separated por que voy a crear elementos basados en una lista y agregar separacion entre elementos
      // Se pone (_ , __) cuando no se va a usar el elemento o variable, son nombres validos para argumentos o variables en dart
      // ayuda a que los elementos vayan siendo construidos bajo demanda, es decir flutter ya va saber cuando ya un hijo va entrar en pantalla y lo va a renderizar
      // de forma perezosa(se renderiza uno por uno no todos a la vez o al mismo tiempo) -> Si ubiera 1M de elemento esos elementos no se renderizarian de forma instantanea con el listview.builder o listview.separated con el listview normal si se renderezaria
      body: ListView.separated(
        itemCount: options.length,
        // itemBuilder: (context, index) => Text( options[index] ),
        // El builder es como va a construir cada uno de los items
        itemBuilder: (context, index) => ListTile(
          leading: const Icon(Icons.gamepad),
          title: Text(options[index]),
          trailing: const Icon(Icons.arrow_forward_ios_rounded),
        ),
        separatorBuilder: (_, __) => const Divider(),
      )
    );
  }
}
