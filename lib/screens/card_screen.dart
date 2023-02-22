import 'package:flutter/material.dart';

import 'package:fl_components/theme/app_theme.dart';

class CardScreen extends StatelessWidget {

  const CardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text('Tarjetas - Cards'),
        centerTitle: true,
      ),
      // body: const Center(
      //   child: Text('CardScreen'),
      // ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        // Serie de widgets que en este caso seran cards
        children: [
          Card(
            // Child widget que va ser colocado dentro de la tarjeta
            // Child va a ser una columna por que quiero poner widgets uno bajo de otro
            child: Column(
              children: const [
                ListTile(
                  leading: Icon(Icons.flash_on_rounded,color: AppTheme.primary),
                  title: Text('I`m title'),
                  subtitle: Text('The mysterious power known as the Speed Force is an energy field that has, over the centuries, granted incredible powers of velocity to certain heroes.'),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}