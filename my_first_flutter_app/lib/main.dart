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
          body: MyClassModel(),
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
          ElevatedButton(
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
              child: Text("Más kola")),
          Image.network('https://fondosmil.com/fondo/17009.jpg',
              loadingBuilder: (context, child, loadingProgress) {
            return loadingProgress == null
                ? child
                : CircularProgressIndicator();
          })
        ],
      ),
    );
  }

  /* body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Text("Hola Mundo"),
              TextField(),
              ElevatedButton(
                  onPressed: () {
                    final snackBar = SnackBar(
                      content: Text('Yay! A SnackBar!'),
                      action: SnackBarAction(
                        label: 'Undo',
                        onPressed: () {
                          // Some code to undo the change.
                        },
                      ),
                    );
                    ScaffoldMessenger.of(context).showSnackBar(snackBar);
                  },
                  child: Text("Aún más kola")),
              Text("Olee")
            ],
          ),
        ),
      ) */

}

/* Ejemplo: 

body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
       */

/* Mira como esta en el ejemplo de google para mostrar un snackbar: 

class SnackBarDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SnackBar Demo',
      home: Scaffold(
        appBar: AppBar(
          title: Text('SnackBar Demo'),
        ),
        body: SnackBarPage(),
      ),
    );
  }
}

class SnackBarPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        onPressed: () {
          final snackBar = SnackBar(
            content: Text('Yay! A SnackBar!'),
            action: SnackBarAction(
              label: 'Undo',
              onPressed: () {
                // Some code to undo the change.
              },
            ),
          );

          // Find the ScaffoldMessenger in the widget tree
          // and use it to show a SnackBar.
          ScaffoldMessenger.of(context).showSnackBar(snackBar);
        },
        child: Text('Show SnackBar'),
      ),
    );
  }
}
 */
