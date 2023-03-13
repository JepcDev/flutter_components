// Si no tiene un _nombreClase quiere decir que se esta exportando es publico
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
    // MenuOption(route: 'home', name: 'Home Screen', screen: const HomeScreen(), icon: Icons.home_rounded),
    MenuOption(route: 'alert', name: 'Alerts', screen: const AlertScreen(), icon: Icons.add_alert_outlined),
    MenuOption(route: 'card', name: 'Cards', screen: const CardScreen(), icon: Icons.credit_card),
    MenuOption(route: 'listview1', name: 'ListView type 1', screen: const Listview1Screen(), icon: Icons.list),
    MenuOption(route: 'listview2', name: 'ListView type 2', screen: const Listview2Screen(), icon: Icons.list_alt),
    MenuOption(route: 'avatar', name: 'Circle Avatar', screen: const AvatarScreen(), icon: Icons.supervised_user_circle_outlined),
    MenuOption(route: 'Animated', name: 'Animated Container', screen: const AnimatedScreen(), icon: Icons.play_circle_outline_rounded),
    MenuOption(route: 'inputs', name: 'Text Input', screen: const InputsScreen(), icon: Icons.input_rounded),
  ];

  //tengo un mapa que tiene como llave un string y una funcion que recibe un BuildContext y regresa un widget
  //basicamente estamos recorriendo el arreglo (menuOptions)y agregando solamente todas las rutas al objeto map (appRoutes) ('home': ( BuildContext context) => const HomeScreen())Esta funcion construye el widget
  static Map<String, Widget Function(BuildContext)> getAppRoutes(){

    Map<String, Widget Function(BuildContext)> appRoutes = {};
    appRoutes.addAll({'home' : ( BuildContext context) => const HomeScreen()});//si no se declara el home, este no existiria y no se podria entrar

    for (final option in menuOptions) {
      appRoutes.addAll({option.route: ( BuildContext context) => option.screen});
    }

    return appRoutes;
  }

  // Rutas definidas
  // static Map<String, Widget Function(BuildContext)> routes = {
  //   'home'     : ( BuildContext context) => const HomeScreen(),
  //   'listview1': ( BuildContext context) => const Listview1Screen(),
  //   'listview2': ( BuildContext context) => const Listview2Screen(),
  // };

  // Para manejar rutas dinamicas
  static Route<dynamic>? onGenerateRoute( RouteSettings settings ) {
    return  MaterialPageRoute(
      builder: (context) => const Listview1Screen(),
    );
  }
}