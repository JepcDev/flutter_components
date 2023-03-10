import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AlertScreen extends StatelessWidget {

  const AlertScreen({super.key});

  void displayDialogIOS(BuildContext context) {

    showCupertinoDialog(
      barrierDismissible: false,
      context: context,
      builder: ( context ){
        return CupertinoAlertDialog(
          title: const Text('Title'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: const [
              Text('Este es el contenido de la alerta'),
              SizedBox(height: 10,),
              FlutterLogo(size: 100,)
            ],
          ),
          actions: [
            TextButton(
              onPressed: ()=>Navigator.pop(context),
              child: const Text('Cancelar', style: TextStyle(color: Colors.red),)
            ),
            TextButton(
              onPressed: ()=>Navigator.pop(context),
              child: const Text('Ok')
            )
          ],
        );
      }
    );
  }

  // DEV displayDialogAndroid
  // mostrar dialogo
  void displayDialogAndroid(BuildContext context) {

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
            ),
            TextButton(
              onPressed: ()=>Navigator.pop(context),
              child: const Text('Ok')
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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              // style: ElevatedButton.styleFrom(
              //   primary: Colors.green,
              //   shape: const StadiumBorder(),
              //   elevation: 0
              // ),
              child: const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                child: Text('Mostrar alerta Android', style: TextStyle(fontSize: 16),),
              ),
              // onPressed: () =>  displayDialogAndroid(context)
              // onPressed: () =>  displayDialogIOS(context)
              //Platform importar de dart:io
              //Platform.isAndroid condicion basado en la plataforma movil: si la plataforma es android muestra la alerta de android
              onPressed: () => Platform.isAndroid
                ? displayDialogAndroid( context )
                : displayDialogIOS( context )
            ),
            const SizedBox(height:20),
            ElevatedButton(
              // style: ElevatedButton.styleFrom(
              //   primary: Colors.green,
              //   shape: const StadiumBorder(),
              //   elevation: 0
              // ),
              child: const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                child: Text('Mostrar alerta IOS', style: TextStyle(fontSize: 16),),
              ),
              // onPressed: () =>  displayDialogAndroid(context)
              // onPressed: () =>  displayDialogIOS(context)
              //Platform importar de dart:io
              //condicion basado en la plataforma movil
              onPressed: () => !Platform.isAndroid
                ? displayDialogAndroid( context )
                : displayDialogIOS( context )
            ),
          ],
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