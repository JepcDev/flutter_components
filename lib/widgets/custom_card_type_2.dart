
import 'package:fl_components/theme/app_theme.dart';
import 'package:flutter/material.dart';

class CustomCardType2 extends StatelessWidget {
  const CustomCardType2({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      //los "cliper" sirven para cortar o para adecuar el contenido
      clipBehavior: Clip.antiAlias ,//Si se dale del widget que lo corte
      //RoundedRectangleBorder sirve para especificar como quiero esos bordes redondeados
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15)
      ),
      elevation: 30,
      shadowColor: AppTheme.primary.withOpacity(0.5),
      child: Column(
        children: [
          //widget para mostrar imagenes
          // Image(
            //image es un widget de tipo proveedor de imagenes
            // NetworkImage proveedor de imagenes mediante una url
          //   image: NetworkImage('https://fotoarte.com.uy/wp-content/uploads/2019/03/Landscape-fotoarte.jpg') ,
          // )

          //widget para cargar una imagen que tarde mucho tiempo en cargar o en mostrarse
          //AssetImage otro image provaider en el cual se especifica una imagen de mis assets
          const FadeInImage(
            image: NetworkImage('https://fotoarte.com.uy/wp-content/uploads/2019/03/Landscape-fotoarte.jpg'),
            placeholder: AssetImage('assets/jar-loading.gif'),
            //double.infinity todo el tamaño del ancho posible de la pantalla
            //double.infinity  solo funciona donde el espacio del widget donde el width es limitado, le dice que tome todo el ancho posible
            width: double.infinity,
            height: 230,
            //fit como la imagen se adapta a su widget, la imagen se adapta a todo el tamaño posible
            fit: BoxFit.cover,
            //la imagen sale mucho mas rapido
            fadeInDuration: Duration(milliseconds: 300),
          ),
          Container(
            //alinea el texto al final del container pero centrado
            alignment: AlignmentDirectional.centerEnd,
            padding: const EdgeInsets.only(right: 20,top: 10,bottom: 10 ),
            child: const Text('Un hermoso paisaje')
          )
        ],
      ),
    );
  }
}