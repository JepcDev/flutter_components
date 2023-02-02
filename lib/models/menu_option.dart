// Es un modelo que va tener cierta informacion para ayudarme con el tipo de datos para que yo pudiera hacer getters y setters

// a estas alturas ya este en meoria y no lo vuelva a cargar si no fuera el caso
// nosotros podes hacer que solo el package IconData sea visible o exponer el icondata solo lo muestra
// En vez de importar todo lo que esta en el package de material solo hacemos visible el IconData
import 'package:flutter/material.dart' show IconData, Widget;

class MenuOption {
  // final por que no se piensa cambiar una vez se cree
  // rout va ser el nombre de la ruta a la que quiero ir
  final String route;//'home'
  final IconData icon;
  // name sera el nombre de la ruta
  final String name;
  //screen es la pantalla que quiero ver
  final Widget screen;
  // si dejamos el constructor sin {} todas los argumentos seran posicionales, al poner los {} la persona podra enviar los datos en el orden que quiera
  // El "require" sirve para obligar al que use este modelo mande o especificarme si o si los valores de estas propiedades , no importa el orden
  MenuOption({
    required this.route,
    required this.name,
    required this.screen,
    required this.icon,
  });

}