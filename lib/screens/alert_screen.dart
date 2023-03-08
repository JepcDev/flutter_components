import 'package:flutter/material.dart';

class AlertScreen extends StatelessWidget {

  const AlertScreen({super.key});

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
          onPressed: (){}
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