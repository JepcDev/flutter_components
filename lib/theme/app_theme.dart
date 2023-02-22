

import 'package:flutter/material.dart';

class AppTheme {
  // propiedades staticas por que no se crearan instancias de la clase cada vez que se quiera el color primario
  static const Color primary = Colors.green;

  static final ThemeData lightTheme = ThemeData.light().copyWith(
    //Color primario
    // Configura el color primario de todos los componentes que no tengan un color ya asignado
    primaryColor: Colors.indigo,

    // AppBar Theme
    // Configura el color de todos los appBar de la app y demas elementos
    appBarTheme: const AppBarTheme(
      color: primary,
      // Es la sombra que hay debajo de cada appbar
      elevation: 0
    ),
  );

    static final ThemeData darkTheme = ThemeData.dark().copyWith(
    //Color primario
    // Configura el color primario de todos los componentes que no tengan un color ya asignado
    primaryColor: Colors.indigo,

    // AppBar Theme
    // Configura el color de todos los appBar de la app y demas elementos
    appBarTheme: const AppBarTheme(
      color: primary,
      // Es la sombra que hay debajo de cada appbar
      elevation: 0
    ),
  );
}