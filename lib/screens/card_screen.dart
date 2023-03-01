import 'package:flutter/material.dart';

import 'package:fl_components/widgets/widgets.dart';
// import 'package:fl_components/theme/app_theme.dart';

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
        children: const [
          //posicionarse sobre el widget card y ctrl + "." y elegir la opcion "extrac widget"
          //cuando se necesite reutilizar un widget hay que crear un widget independiente para poder reutilizarlo
          CustomCardType1(),
          CustomCardType2()
        ],
      ),
    );
  }
}

