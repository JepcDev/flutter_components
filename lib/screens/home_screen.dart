import 'package:flutter/material.dart';

import 'package:fl_components/router/app_routes.dart';

// import 'package:fl_components/screens/screens.dart';

class HomeScreen extends StatelessWidget {

  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final option = AppRoutes.menuOptions;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Componentes en flutter'),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.indigoAccent,
      ),
      body: ListView.separated(
        itemBuilder: (context, index) => ListTile(
          // leading: const Icon(Icons.account_circle),
          leading: Icon(option[index].icon, color: Colors.indigoAccent,) ,
          // title: const Text('Nombre de ruta'),
          title:  Text(option[index].name),
          onTap: () {
            // El builder es una funcion o algo que permite la construccion de un widget usualmente un builder retorna un widget
            // final route = MaterialPageRoute(
            //   builder: (context) => const Listview1Screen(),
            // );
            // la informacion del context se va pasando de widget en widget, en este punto el contexto sabe toda la informacion del arbol de widget hasta este punto, sabe toda la informacion de los scaffold , las rutas ect es decir todo lo que se esta construido hasta ante de este punto
            // El "context" Sirve como una memoria de como esta construida mi aplicasion
            // Navigator.push(context, route);

            Navigator.pushNamed(context, option[index].route);
          },
        ),
        separatorBuilder:(_, __) => const Divider(),
        // itemCount: 10
        // itemCount: AppRoutes.menuOptions.length
        itemCount: option.length
      )
    );
  }
}