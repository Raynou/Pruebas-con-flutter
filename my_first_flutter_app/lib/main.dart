import 'package:flutter/material.dart';

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
        /* Para la parte central de la aplicación */
        body: Center(
          child: TextField(),
        ),
      ),
    );
  }
}
