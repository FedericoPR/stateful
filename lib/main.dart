import 'package:flutter/material.dart';
var tarea = { "nombre": "Tarea uno", "done": false};
void main() => runApp(Tarea());
class Tarea extends StatefulWidget{
  @override
  State<Tarea> createState() {
    print("Crear state");
    return new TareaState();
  }
}

class TareaState extends State<Tarea> {

  void _click(){
    print("Click");
    setState( () {
      tarea['done'] = !tarea['done'];
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to Flutter',
      home: Scaffold(
          appBar: AppBar(
            title: Text('Welcome to Flutter'),
          ),
          body: Container(
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
            child: Row(
                children: [
                  if(tarea['done']) Icon(Icons.done)
                  else Icon(Icons.clear),
                  FlatButton(
                      onPressed: (){_click();},
                      child:Text(tarea['nombre'])
                  )
                ]
            ),
          )
      ),
    );
  }
}