// Si no tiene un _nombreClase quiere decir que se esta exportando es publico
import 'package:fl_components/screens/alert_screen.dart';
import 'package:fl_components/screens/cart_screen.dart';
import 'package:flutter/material.dart';

import 'package:fl_components/models/models.dart';
import 'package:fl_components/screens/screens.dart';

// DEV class AppRoutes
class AppRoutes {
  // Podemos tener propiedades y metodos estaticos, es una prpiedad a la que se puede acceder sin la necesidad de instanciar la clase
  // Ruta inicial
  static const initialRoute = 'home';

  // Es una lista de menuOptions y solo puedo poner menuOptions
  static final menuOptions = <MenuOption>[
    MenuOption(route: 'home', name: 'Home Screen', screen: const HomeScreen(), icon: Icons.home_rounded),
    MenuOption(route: 'listview1', name: 'ListView type 1', screen: const Listview1Screen(), icon: Icons.list),
    MenuOption(route: 'listview2', name: 'ListView type 2', screen: const Listview2Screen(), icon: Icons.list_alt),
    MenuOption(route: 'alert', name: 'Alerts', screen: const AlertScreen(), icon: Icons.add_alert_outlined),
    MenuOption(route: 'card', name: 'Cards', screen: const CardScreen(), icon: Icons.credit_card),
  ];

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