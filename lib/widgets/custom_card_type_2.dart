
import 'package:flutter/material.dart';

class CustomCardType2 extends StatelessWidget {
  const CustomCardType2({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10,
      child: Column(
        children: const[
          //widget para mostrar imagenes
          // Image(
            //image es un widget de tipo proveedor de imagenes
            // NetworkImage proveedor de imagenes mediante una url
          //   image: NetworkImage('https://fotoarte.com.uy/wp-content/uploads/2019/03/Landscape-fotoarte.jpg') ,
          // )

          //widget para cargar una imagen que tarde mucho tiempo en cargar o en mostrarse
          //AssetImage otro image provaider en el cual se especifica una imagen de mis assets
          FadeInImage(
            image: NetworkImage('https://fotoarte.com.uy/wp-content/uploads/2019/03/Landscape-fotoarte.jpg'),
            placeholder: AssetImage('assets/jar-loading.gif'),
          )
        ],
      ),
    );
  }
}