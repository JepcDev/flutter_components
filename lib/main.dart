import 'package:flutter/material.dart';

import 'package:fl_components/router/app_routes.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      // home: Listview2Screen(),
      // initialRoute: 'home',
      initialRoute: AppRoutes.initialRoute,
      // Rutas, con esta lista de rutas puedo apuntar a cualquier pantalla o navegar a cualquier pantalla
      routes: AppRoutes.getAppRoutes(),
      // routes: {
      //   'home'     : ( BuildContext context) => const HomeScreen(),
      //   'listview1': ( BuildContext context) => const Listview1Screen(),
      //   'listview2': ( BuildContext context) => const Listview2Screen(),
      // },
      // Sirve para trabjar con rutas que son creadas de manera dinamica
      // me va servir para cuando yo quiera trabajar con algun tipo de ruta dinamica
      // Es decir sirve para trabajar con rutas que no fueron definidas previamente
      // El onGenerateRoute manda mis settings
      // Si tenemos un argumento y ese es el unico argumento que tenemos y ese argumento se manda como parametro en una funcion
      // onGenerateRoute: (settings) =>  AppRoutes.onGenerateRoute(settings)//como aqui
      // Entonces podemos obiar poner la definicion de ese parametro o argumento y simplemente solo enviar la referencia a nuestra funcion
      onGenerateRoute: AppRoutes.onGenerateRoute
    //   onGenerateRoute: (settings) {
    //     print(settings);
    //     return  MaterialPageRoute(
    //           builder: (context) => const Listview1Screen(),
    //         );
    //   },
    );
  }
}