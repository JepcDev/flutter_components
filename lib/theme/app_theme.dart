

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

    //TextButton Theme
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(foregroundColor: primary),
    ),

    //FloatingActionButton
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: primary,
      elevation: 5
    ),

    //ElevatedButton
    elevatedButtonTheme:  ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.green,
        shape: const StadiumBorder(),
        elevation: 0
      )
    ),

    inputDecorationTheme: const InputDecorationTheme(
      floatingLabelStyle: TextStyle( color: primary ),
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide( color: primary ),
        borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10), topRight: Radius.circular(10) )
      ),

      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide( color: primary ),
        borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10), topRight: Radius.circular(10) )
      ),

      border: OutlineInputBorder(
        borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10), topRight: Radius.circular(10) )
      ),
    )
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
    //TextButton Theme
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(foregroundColor: primary),
    )
  );
}