import 'package:flutter/material.dart';

import 'package:fl_components/widgets/widgets.dart';

class InputsScreen extends StatelessWidget {

  const InputsScreen({super.key});

  @override
  Widget build(BuildContext context) {

    // las key son usadas para mantener la referencia a un widget
    // por lo general lo que se matiene la referencia es al estado de ese widget
    // final  myFormKey = GlobalKey<FormState>()
    // ahora ese formulario y todo su estado lo tenemos y podemos referenciar mediante esta variable myFormKey
    final GlobalKey<FormState> myFormKey = GlobalKey<FormState>();

    final Map<String, String> formValues = {
      'first_name' : 'Jepc',
      'last_name'  : 'Pc',
      'email'      : 'jepc@gmail.com',
      'password'   : '123456',
      'role'       : 'Admin'
    };

    return Scaffold(

      appBar: AppBar(
        centerTitle: true,
        title: const Text('Inputs y Forms'),
      ),

      // Cuando se quiera trabajar con formularios aunque sea 1 solo y con un unico input y ese unico input esta en la parte superior de la pantalla tal vez sera una excepcion
      // usualmente cuando se requiera poner inputs en la pantalla se va requerir hacer scroll para poder empujar el contenido , cualquier widget que nos deje hacer scroll
      // SingleChildScrollView funciona como si tubieramos un listview pero en lugar de tener muchos elementos solo tenemos 1 y si se tendria que el child es mas grande que las dimensiones de la pantalla este widget permite hacer scroll
      body: SingleChildScrollView(
        // Padding para que los elementos no queden pegados a los bordes
        child: Padding(
          padding: const EdgeInsets.symmetric( horizontal: 16, vertical: 8 ),
        // hay un punto en el cual que hay un widget que contiene todos los input de nuestro formulario, a ese widget es que nosotros necesitamos enmarcarlo con el widget form
        // lo que tenemos que hacer es seleccionar un widget donde los input o mi formulario va a ser contenido
          child: Form(
            key: myFormKey,
            // algo que necesito es que cuando se vaya hacer algun posteo ejemplo un onchange , cuando se vaya hacer algo con el formulario necesitamos acceso a todo el formulario como tal 
            child: Column(
              children: [
          
                const SizedBox( height: 10 ),
          
                const CustomInputField( labelText: 'Nombre', hintText: 'Nombre del usuario',textInputType: TextInputType.text),
                const SizedBox( height: 16 ),
          
                const CustomInputField( labelText: 'Apellido', hintText: 'Apellido del usuario',),
                const SizedBox( height: 16 ),
          
                const CustomInputField( labelText: 'Correo', hintText: 'Correo del usuario', textInputType: TextInputType.emailAddress,),
                const SizedBox( height: 16 ),
          
                const CustomInputField( labelText: 'Contraseña', hintText: 'Contraseña del usuario', obscureText: true,),
                const SizedBox( height: 16 ),
          
                ElevatedButton(
                  onPressed:() {
                    // para quitar el foco del input del formulario, para minimizar el teclado despues de darle click al boton que acciona este onpress
                    FocusScope.of(context).requestFocus( FocusNode());
                    // validate verifica si el formulario es valido o no y tambien ejecuta las validaciones de los inputs que estan dentro de su arbol de widgets o dentro del context creado en la referencia a este formulario
                    // currentState! le dice a dart que siempre va tener un estado
                    if (!myFormKey.currentState!.validate()) {
                      print('Formulario no valido');
                      return;
                    }
                    //* : imprimir valores del formulario
                    // el problema que se tiene aqui esque el fomulario esta esta esparcido en los widget personalizados del input y dentro de estos esta el TextFormField
                    // el form sabe que hay dentro de el hay TextFormField el problema esque no sabemos como obtener esa informacion o valores 
                    print(formValues);
                  },
                  child: const SizedBox(
                    width: double.infinity,
                    child: Center(child: Text('Guardar')),
                  ),
                )
              ],
            ),
          ),
        ),

      )

    );
  }
}

