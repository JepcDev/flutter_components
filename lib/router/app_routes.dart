// Si no tiene un _nombreClase quiere decir que se esta exportando es publico
import 'package:flutter/material.dart';

import 'package:fl_components/screens/screens.dart';

// DEV class AppRoutes
class AppRoutes {
  // Podemos tener propiedades y metodos estaticos, es una prpiedad a la que se puede acceder sin la necesidad de instanciar la clase
  // Ruta inicial
  static const initialRoute = 'home';

  // Rutas definidas
  static Map<String, Widget Function(BuildContext)> routes = {
    'home'     : ( BuildContext context) => const HomeScreen(),
    'listview1': ( BuildContext context) => const Listview1Screen(),
    'listview2': ( BuildContext context) => const Listview2Screen(),
  };

  // Para manejar rutas dinamicas
  static Route<dynamic>? onGenerateRoute( RouteSettings settings ) {
    return  MaterialPageRoute(
      builder: (context) => const Listview1Screen(),
    );
  }
}