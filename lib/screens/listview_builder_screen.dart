import 'package:fl_components/theme/app_theme.dart';
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

// variable que indica si se estan cargando las imagenes o no
// hace la simulacion de que se esta trayendo algo del internet como un loading
bool isLoading = false;

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
        // add5();
        fetchData();
      }
    });
  }

  // me va pertmitir hacer un cierto tipo de espera, miestras espero los archivos se hace una simulacion de se estan cargando
  Future fetchData() async {

    // si esta cargando hacer nada
    if( isLoading ) return;
    // primera vez que entra es false y entonces en es mismo instante se cambia a true que se esta cargando
    // este isLoading va hacer algun tipo de iteraccion en el widget , esta iteraccion va necesitar saber el ultimo esta de isLoading y para eso se pondra un setState para que los widget se redibujen basados en el state
    isLoading = true;
    // setState para que los widget se redibujen basados en el state, especialmente aquellos que trabajen con el isLoading
    setState(() {});
    // se necesita detener los procesos por 3 segundos
    // tambien se puede ejetar alguna tarea despues que el dilayed ternmine, 3 segundos despues va a continuar el codigo que viene despues
    await Future.delayed( const Duration( seconds: 3 ));
    add5();
    isLoading = false;
    setState(() {});

    if (scrollController.position.pixels + 100 <= scrollController.position.maxScrollExtent) return;
    scrollController.animateTo(
      //offset es el punto del nuevo scroll al que quiero moverme
      scrollController.position.pixels + 120,
      duration: const Duration( milliseconds: 300 ),
      curve: Curves.fastOutSlowIn
    );
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
    // da informacion del dispositivo
    // en este punto size sabe el ancho y alto de la pantalla
    final size = MediaQuery.of(context).size;
    return Scaffold(
      // backgroundColor: Colors.black,
      // remueve padding de la pantalla
      body: MediaQuery.removePadding(
        context: context,
        // se remueve el padding superior
        removeTop: true,
        // se remueve el paffing inferior
        removeBottom: true,
        // stack es un widget que nos deja poner un widget sobre otro, parecido a un row o column
        child: Stack(
          children: [
            ListView.builder(
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

            if( isLoading )
              Positioned(
                bottom: 40,
                // left se calcula respecto al width: del container del _LoadingIcon,
                // size.width el ancho que tenga el dispositivo pero quiero la mitad(size.width * 0.5)
                // si no se le resta 30 aun tenemos un widget de 60px que esta salido
                left: size.width * 0.5 - 30,
                child: const _LoadingIcon()
              )
          ],
        ),
      ),
    );
  }
}

class _LoadingIcon extends StatelessWidget {
  const _LoadingIcon({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      // color: Colors.red,
      height: 60,
      width: 60,
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.9),
        // borderRadius:
        shape: BoxShape.circle
      ),
      child: const CircularProgressIndicator( color: AppTheme.primary,),
    );
  }
}