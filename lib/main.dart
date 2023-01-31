import 'package:flutter/material.dart';

import 'package:fl_components/screens/screens.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      // home: Listview2Screen(),
      initialRoute: 'home',
      // Rutas, con esta lista de rutas puedo apuntar a cualquier pantalla o navegar a cualquier pantalla
      routes: {
        'home'     : ( BuildContext context) => const HomeScreen(),
        'listview1': ( BuildContext context) => const Listview1Screen(),
        'listview2': ( BuildContext context) => const Listview2Screen(),
      },
      // Sirve para trabjar con rutas que son creadas de manera dinamica
      // me va servir para cuando yo quiera trabajar con algun tipo de ruta dinamica
      // Es decir sirve para trabajar con rutas que no fueron definidas previamente
      onGenerateRoute: (settings) {
        print(settings);
        return  MaterialPageRoute(
              builder: (context) => const Listview1Screen(),
            );
      },
    );
  }
}