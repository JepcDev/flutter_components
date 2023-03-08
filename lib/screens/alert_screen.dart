import 'package:flutter/material.dart';

class AlertScreen extends StatelessWidget {

  const AlertScreen({super.key});

  // mostrar dialogo
  void displayDialog(BuildContext context) {

    showDialog(
      //nos permite cerrar el dialogo cuando hacemos click en la sombra
      barrierDismissible: false,
      context: context,
      builder: (context) {
        return AlertDialog(
          elevation: 5,
          title: const Text('Title'),
          // para darle forma a los bordes del alertdialog
          shape: RoundedRectangleBorder(borderRadius: BorderRadiusDirectional.circular(10)),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: const [
              Text('Contenido de la alerta'),
              SizedBox(height: 10,),
              FlutterLogo(size: 50,)
            ],
          ),
          //actions: Si yo quiero que la alerta siempre se muestre y tiene que presionar algun boton que ejecute una accion
          // Las acciones son otros widget o accines que podemos definir
          actions: [
            TextButton(
              onPressed: ()=>Navigator.pop(context),
              child: const Text('Cancelar')
            )
          ],
        );
      }
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        // child: Text('AlertScreen'),
        child: ElevatedButton(
          // style: ElevatedButton.styleFrom(
          //   primary: Colors.green,
          //   shape: const StadiumBorder(),
          //   elevation: 0
          // ),
          child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
            child: Text('Mostrar alerta', style: TextStyle(fontSize: 16),),
          ),
          onPressed: () =>  displayDialog(context)
        ),
      ),

      floatingActionButton: FloatingActionButton(
        child:const Icon(Icons.close),
        onPressed: (){
          Navigator.pop(context);//le decimos que nos bote la utima pantalla que esta en el stack de cartas
        }
      ),
    );
  }
}