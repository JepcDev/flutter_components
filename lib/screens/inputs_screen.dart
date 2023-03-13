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
                autofocus: false,
                initialValue: 'nombre',
                //textCapitalization se usa para campos donde se quiera capitalizar cada palabra ejemplo nombres y apellidos
                textCapitalization: TextCapitalization.words,
                //captura el valor que se esta ingresando en el input
                // se puede tener aqui algo que este escuchando ese valor y almacenarlo en el estado de la aplicasion global o en estado del statefullwidget o en el estado implementado para manejar el formulario
                onChanged: ( value ) {
                  print( 'value: $value');
                },
                // imaginemos que en la caja de texto se requiera o que tenga algun tipo de validacion , ejemplo : que sean mas de 5 caracteres, que cumpla con una expresion regular ect.
                // validator sirve para hacer esas validaciones.
                validator: (value) {
                  //la validacion no se esta disparando por que el valor no es nulo
                  // esto se dispararica cuando tengamos al "TextFormField" envuelto en un formulario y el formulario intente hacer un posteo o intente hacer la verificacion de cada uno de los campos y algun campo no tenga valor hay seria nulo
                  // no se ve nada por que a este validador necesitamos accionarlo de alguna manera y para eso necesitamos colocar el autovalidateMode
                  // si regresa un string quiere decir que la validacion no esta pasando, es decir hay algun error
                  if (value == null) return 'Este campo es requerido';
                  //se puede evaluar lo que deseen una expresion regular , si se escribio un 2 o un 10 ect lo que se desee evaluar
                  // pueden hacer lo que deseen con esta funcion de evaluacion que recibimos aqui
                  // return 'Hola mundo';
                  // al regresar un null quiere decir que la validacion esta pasando
                  return value.length < 3 ? 'Minimo de 3 letras' : null;
                } ,
                // AutovalidateMode.always siempre se muestra el mensaje
                // autovalidateMode: AutovalidateMode.always,
                // la evaluacion no se dispara hasta que la persona haga alguna iteracion con el input
                // esto tambien se pued colocar en la parte del formulario y el formulario se va a encargar de ver los TextFormField o los diferentes TextFormField no necesariamente solo de texto
                autovalidateMode: AutovalidateMode.onUserInteraction,
                decoration: const InputDecoration(
                  // hintText es lo que se muestra en el espacio donde va a escribir el usuario,donde se pone el foco, aparece cuando el usuario pone el foco en ese espacio sino se muestra el labelText
                  hintText: 'Nombre del usuario',
                  // se muestra antes del hintText pero se recorre hacia arriba cuando el usuario empieza a iteractuar con el input o espacio
                  labelText: 'Nombre',
                  // ayuda al usuario aparece antes de la validacion cuando el usuario no iteractua con el input o caja de texto y despues que el mensaje de la validacion desaparece
                  helperText: 'Solo letras',
                  // es util para identificar cuantos caracteres quedan para pasar la validacion
                  // counterText: ' 3 caracteres'
                  // es un icono que aparece al inicio de la vaja de texto
                  prefixIcon: Icon(Icons.verified_user_rounded),
                  // es un icono que aparece al final de la caja de texto
                  suffixIcon: Icon(Icons.group_outlined),
                  // este icono aparece delante de la linea de texte pero la recorre toda la linea , junto con los demas componentes los anteriores no lo recorrian
                  icon: Icon( Icons.assignment_ind_outlined ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.green
                    )
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(10),
                      topRight: Radius.circular(10)
                    )
                  ),
                  // no se puede colocar el color por que el input tiene muchos estados

                ),
              )
            ],
          ),
        ),

      )

    );
  }
}