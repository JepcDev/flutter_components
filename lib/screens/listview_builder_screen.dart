import 'package:flutter/material.dart';

class ListViewBuilderScreen extends StatelessWidget {

  const ListViewBuilderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.black,
      // remueve padding de la pantalla
      body: MediaQuery.removePadding(
        context: context,
        // se remueve el padding superior
        removeTop: true,
        // se remueve el paffing inferior
        removeBottom: true,
        child: ListView.builder(
          itemCount: 10,
          itemBuilder: (BuildContext context, int index) {
            return FadeInImage(
              // que tome todo el ancho posible
              width: double.infinity,
              height: 300,
              // que tome todo el espacio que tiene la imagen
              fit: BoxFit.cover,
              placeholder: const AssetImage('assets/jar-loading.gif'),
              image: NetworkImage('https://picsum.photos/500/300?image=${index + 1}')
            );
          },
        ),
      ),
    );
  }
}