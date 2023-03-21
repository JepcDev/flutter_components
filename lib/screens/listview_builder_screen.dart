import 'package:flutter/material.dart';

class ListViewBuilderScreen extends StatefulWidget {

  const ListViewBuilderScreen({super.key});

  @override
  State<ListViewBuilderScreen> createState() => _ListViewBuilderScreenState();
}

class _ListViewBuilderScreenState extends State<ListViewBuilderScreen> {

// tenemos un listado que controla cuantos elementos se van a renderizar o se se estan renderizando en el ListView.builde
  final List<int> imagenesIds = [1,2,3,4,5,6,7,8,9,10];
// Necesito saber el punto de mi listview , es decir que tan cerca del final estoy, o cual es la posicion del scroll de ese listview para saber eso vamos a ocupar un controlador
// tal vez el key funcionaria pero usualmente cuando se trabaja con el listview se quiere escuchar los cambios que hay en el listview, que tan al final estoy , que tan arrieba estoy o en que posicion estoy
// cual quier widget que tenga scroll va tener el controller "new ScrollController();"
final ScrollController scrollController = ScrollController();

// para saber el valor del scrollcontroller se necesita un listener es decir estar escuchando al scroll

//para eso en los StatefulWidgets, tenemos dos pasos en el cliclo de vida de un StatefulWidget que son importantes uno es:
// initState cuan el state se crea por primera y unica vez
@override
  void initState() {
    // TODO: implement initState
    super.initState();
    // el listener no recibe ningun valor pero cada vez que que algo pase con el scrollview aqui se va a emitir
    scrollController.addListener(() {
      // print( '${scrollController.position.pixels}, ${scrollController.position.maxScrollExtent}' );
      // se va llamar a la funcion add5 cuando scrollController.position.pixels y scrollController.position.maxScrollExtent esten cerca de ser iguales
      if ( (scrollController.position.pixels + 500) >= scrollController.position.maxScrollExtent ) {
        add5();
      }
    });
  }


  void add5() {
    // obtiene el ultimo valor, sirve para aumentar la cantidad de imagenes o sumar basado en ese valor
    final lastId = imagenesIds.last;
    // se requiere un iterable o algo en lo que se pueda recorrer
    imagenesIds.addAll(
      // tengo un arreglo del 1 al 5 y se esta barriendo recorriendo cada uno de los elementos y solo sumandole los valores del arreglo al ultimo valor del arreglo de imagenes
      [1,2,3,4,5].map((e) => lastId + e)
    );
    // para actualizar el listview
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.black,
      // remueve padding de la pantalla
      body: MediaQuery.removePadding(
        context: context,
        // se remueve el padding superior
        removeTop: true,
        // se remueve el paffing inferior
        removeBottom: true,
        child: ListView.builder(
          physics: const BouncingScrollPhysics(),
          // cual quier widget que tenga scroll va tener el controller
          // ahora el scrollController esta asociado a este lisview puedo saber su valor en todo momento
          controller: scrollController,
          // itemCount: 10,
          // cantidad de imagenes que hay en imagenesIds
          itemCount: imagenesIds.length,
          itemBuilder: (BuildContext context, int index) {
            return FadeInImage(
              // que tome todo el ancho posible
              width: double.infinity,
              height: 300,
              // que tome todo el espacio que tiene la imagen
              fit: BoxFit.cover,
              placeholder: const AssetImage('assets/jar-loading.gif'),
              // image: NetworkImage('https://picsum.photos/500/300?image=${index + 1}')
              image: NetworkImage('https://picsum.photos/500/300?image=${ imagenesIds[index]}')
            );
          },
        ),
      ),
    );
  }
}