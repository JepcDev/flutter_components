import 'package:flutter/material.dart';
import 'package:fl_components/theme/app_theme.dart';

class CustomCardType1 extends StatelessWidget {
  const CustomCardType1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      // Child widget que va ser colocado dentro de la tarjeta
      // Child va a ser una columna por que quiero poner widgets uno bajo de otro
      child: Column(
        children: [
          const ListTile(
            leading: Icon(Icons.flash_on_rounded,color: AppTheme.primary),
            title: Text('I`m title'),
            subtitle: Text('The mysterious power known as the Speed Force is an energy field that has, over the centuries, granted incredible powers of velocity to certain heroes.'),
          ),

          Padding(
            padding: const EdgeInsets.only( right: 5 ,bottom: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: () {},
                  child: const Text('Cancel'),
                  // style: TextButton.styleFrom(primary: Colors.green),
                ),
                TextButton(
                  onPressed: () {},
                  child: const Text('Ok'),
                )
              ],
            ),
          )

        ],
      ),
    );
  }
}