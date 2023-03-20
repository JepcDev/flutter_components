import 'package:flutter/material.dart';
import 'package:fl_components/theme/app_theme.dart';

class SliderScreen extends StatefulWidget {

  const SliderScreen({super.key});

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {

// al ser un statelesfulwidget yo puedo contener o matener el valor de ese slider en una propiedad
  double _sliderValue = 100;
  bool _sliderEnabled = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        centerTitle: true,
        title: const Text('Sliders && Cheks'),
      ),

      body: Column(
        children: [
          // el "slider" widget me permite crear un slider en el cual el usuario seleccionar valores o poder mover un boton
          Slider.adaptive(
            min: 50,
            max: 400,
            activeColor: AppTheme.primary,
            // divisions: 10,
            // value: 100,
            value: _sliderValue,
            onChanged: _sliderEnabled
            ? ( value ) {
              // print(value);
              _sliderValue = value;
              setState(() {});
            }
            : null
          ),

          // Checkbox es un widget para simular un checkbox o caja seleccionable
          // cuando se pone null en el onchage el checkbox se desabilita
          // Checkbox(
          //   value: _sliderEnabled,
          //   onChanged: ( value ) {
          //     _sliderEnabled = value ?? true;
          //     setState(() {});
          //   }
          // ),

          // Switch(
          //   value: _sliderEnabled,
          //   onChanged: (value) => setState(() { _sliderEnabled = value ;}),
          // ),

          CheckboxListTile(
            activeColor: AppTheme.primary,
            title: const Text('Habilitar Slider'),
            value: _sliderEnabled,
            onChanged: (value) => setState(() { _sliderEnabled = value ?? true;}),
          ),

          SwitchListTile.adaptive(
          activeColor: AppTheme.primary,
            title: const Text('Habilitar Slider'),
            value: _sliderEnabled,
            onChanged: (value) => setState(() { _sliderEnabled = value;})
          ),

          const AboutListTile(),

          // en una columna no se sabe internamente cual es el tamaño que tiene, poreso no funciona el scroll, es util que este widget sepa cual es el tamaño que va a usar y seria el tamaño restante de la columna que se muestra en la pantalla
          // Expanded es un widget que sirve para decirle al widget que envuelve que tome todo el campo o ancho restante posible solo ese widget
          Expanded(
            child: SingleChildScrollView(
              child: Image(
                // image: NetworkImage('https://s1.eestatic.com/2019/06/21/viajes/tasmania-viajes-viajes_407971957_126174353_1706x960.jpg',),
                // image: NetworkImage('https://img2.freepng.es/20180411/icq/kisspng-flash-logo-decal-sticker-symbol-the-flash-5acdaac05d4a28.9285488115234280323821.jpg',),
                // image: NetworkImage('https://w7.pngwing.com/pngs/92/644/png-transparent-green-lantern-corps-sinestro-flash-superhero-the-green-lantern-text-trademark-logo-thumbnail.png',),
                image: const NetworkImage('https://www.maxpixel.net/static/photo/1x/Hero-Comics-Superheroes-Dc-Comics-Dark-Batman-5377804.png',),
                fit: BoxFit.contain,
                width: _sliderValue,
              ),
            ),
          ),

        ],
      )
    );
  }
}