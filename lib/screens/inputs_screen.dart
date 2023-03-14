import 'package:flutter/material.dart';

import 'package:fl_components/widgets/widgets.dart';

class InputsScreen extends StatelessWidget {

  const InputsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: const Text('Inputs y Forms'),
      ),

      // Cuando se quiera trabajar con formularios aunque sea 1 solo y con un unico input y ese unico input esta en la parte superior de la pantalla tal vez sera una excepcion
      // usualmente cuando se requiera poner inputs en la pantalla se va requerir hacer scroll para poder empujar el contenido , cualquier widget que nos deje hacer scroll
      // SingleChildScrollView funciona como si tubieramos un listview pero en lugar de tener muchos elementos solo tenemos 1 y si se tendria que el child es mas grande que las dimensiones de la pantalla este widget permite hacer scroll
      body: SingleChildScrollView(
        // Padding para que los elementos no queden pegados a los bordes
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Column(
            children: const [

              CustomInputField( labelText: 'Nombre', hintText: 'Nombre del usuario',)
            ],
          ),
        ),

      )

    );
  }
}

