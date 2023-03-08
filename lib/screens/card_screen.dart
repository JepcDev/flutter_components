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
          SizedBox( height: 10,),
          CustomCardType2(imagenUrl: 'https://fotoarte.com.uy/wp-content/uploads/2019/03/Landscape-fotoarte.jpg'),

          SizedBox( height: 20,),
          CustomCardType2(imagenUrl: 'https://s1.eestatic.com/2019/06/21/viajes/tasmania-viajes-viajes_407971957_126174353_1706x960.jpg',),

          SizedBox( height: 20,),
          CustomCardType2( name: 'Los tranquilos puertos de la isla',imagenUrl: 'https://s1.eestatic.com/2019/06/21/viajes/viajes_407971985_126175149_1706x1280.jpg'),

          SizedBox( height: 10,),
          // CustomCardType2(imagenUrl: 'https://s1.eestatic.com/2019/06/21/viajes/viajes_407971985_126175149_1706x1280.jpg',)
        ],
      ),
    );
  }
}

