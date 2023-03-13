import 'package:flutter/material.dart';

class InputsScreen extends StatelessWidget {

  const InputsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text('Inputs y Forms'),
      ),

      // Cuando se quiera trabajar con formularios aunque sea 1 solo y con un unico input y ese unico input esta en la parte superior de la pantalla tal vez sera una excepcion
      // usualmente cuando se requiera poner inputs en la pantalla se va requerir hacer scroll para poder empujar el contenido , cualquier widget que nos deje hacer scroll
      // SingleChildScrollView funciona como si tubieramos un listview pero en lugar de tener muchos elementos solo tenemos 1 y si se tendria que el child es mas grande que las dimensiones de la pantalla este widget permite hacer scroll
      body: SingleChildScrollView(
        // Padding para que los elementos no queden pegados a los bordes
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Column(
            children: [
              // Tenemos varios widgets para los inputs(TextFormField(),TextField()) lucen iguales pero
              //TextFormField() tiene mas iteciones con formularios, se recomienda trabajar cone el TextFormField porque podemos adicionar validaciones automaticas es el mas usado para hacer formularios en flutter 
              //TextField() se utiliza solo cuando se quiere hacer algo sin formulario, cuando no hay un formulario que los agrupe
              TextFormField(
                //cuando se construye el widget se pone en el input el foco
                autofocus: true,
                initialValue: 'nombre',
                //textCapitalization se usa para campos donde se quiera capitalizar cada palabra ejemplo nombres y apellidos
                textCapitalization: TextCapitalization.words,
                //captura el valor que se esta ingresando en el input
                // se puede tener aqui algo que este escuchando ese valor y almacenarlo en el estado de la aplicasion global o en estado del statefullwidget o en el estado implementado para manejar el formulario
                onChanged: ( value ) {
                  print( 'value: $value');
                },
              )
            ],
          ),
        ),

      )

    );
  }
}