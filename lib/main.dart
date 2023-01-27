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
    );
  }
}