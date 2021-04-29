import 'package:flutter/material.dart';
import 'gradient.dart';

void main() => runApp(MyApp());

/* Lo de arriba es lo mismo que esto:
void main() {
  runApp(MyApp());
}
Usalo cuando solo vayas a un método */

/* Todo lo marcado en verde es un widget */
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Kola",
        //Este va a ser el widget que toma toda la pantalla de la aplicación
        home: Scaffold(
          /* Widget del appbar */
          appBar: AppBar(
            /* Los parámetros van acá */
            title: Text('Aquí todos son widgets oiga ._.'),
          ),
          body: MyBackWeather(),
          /* Para la parte central de la aplicación */
        ));
  }
}

class MyClassModel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Text("Hola Mundo"),
          TextField(),
          MyElevatedButton(),
          Image.network('https://fondosmil.com/fondo/17009.jpg',
              loadingBuilder: (context, child, loadingProgress) {
            return loadingProgress == null
                ? child
                : CircularProgressIndicator();
          }),
          MyText()
        ],
      ),
    );
  }
}

class MyElevatedButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () {
          final snackBar = SnackBar(
            content: Text('Aún más kola'),
            action: SnackBarAction(
              label: 'Cerrar',
              onPressed: () {
                // Some code to undo the change.
              },
            ),
          );
          ScaffoldMessenger.of(context).showSnackBar(snackBar);
        },
        child: Text("Más kola"));
  }
}

//StatelessWidget significa un widget estático
class MyText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text("Hello world!");
  }
}
