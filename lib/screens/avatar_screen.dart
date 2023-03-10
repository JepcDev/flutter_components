import 'package:flutter/material.dart';

class AvatarScreen extends StatelessWidget {

  const AvatarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        centerTitle: true,
        title: const Text('Star Lord'),
        actions: [
          // el paddin es la separacion interna de los del elemento o los elementos con su contenedor
          // el margin es para hacer una separacion externa entre el elemento y sus mas proximos elmentos
          Container(
            margin: const EdgeInsets.only(right: 5),
            child: CircleAvatar(
              backgroundColor: Colors.green[800],
              child: const Text('SL'),
            ),
          )
        ],
      ),

      body: const Center(
        child: CircleAvatar(
          maxRadius: 120,
          // El fadeInImage no es un "IamgeProvider" sino un "widget" poreso no se lo puede usar aqui
          backgroundImage: NetworkImage('https://64.media.tumblr.com/dc1b5bc7495fb0c1f14dbd3233c19908/tumblr_oym8fl8T6v1t7b5qro3_1280.jpg'),
        )
      ),

      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.close),
        onPressed: ()=> Navigator.pop(context),
      ),
    );
  }
}