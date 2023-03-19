import 'package:fl_components/theme/app_theme.dart';
import 'package:flutter/material.dart';

class SliderScreen extends StatefulWidget {

  const SliderScreen({super.key});

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {

// al ser un statelesfulwidget yo puedo contener o matener el valor de ese slider en una propiedad
  double _sliderValue = 100;

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        centerTitle: true,
        title: const Text('Sliders && Cheks'),
      ),

      body: SingleChildScrollView(
        child: Column(
          children: [
            // el "slider" widget me permite crear un slider en el cual el usuario seleccionar valores o poder mover un boton
            Slider.adaptive(
              min: 50,
              max: 400,
              activeColor: AppTheme.primary,
              // divisions: 10,
              // value: 100,
              value: _sliderValue,
              onChanged: ( value ) {
                // print(value);
                _sliderValue = value;
                setState(() {});
              }
            ),

            Image(
              image: NetworkImage('https://s1.eestatic.com/2019/06/21/viajes/tasmania-viajes-viajes_407971957_126174353_1706x960.jpg',),
              fit: BoxFit.contain,
              width: _sliderValue,
            ),

            const SizedBox( height: 50,),
          ],
        ),
      )
    );
  }
}