import 'package:flutter/material.dart';
//var tarea = { "nombre": "Tarea  num uno", "done": false};
void main() => runApp(MyApp());

//--------------------------------------------------------
class Tarea extends StatefulWidget {
  var laTarea;
  // constructor
  Tarea( t ){ this.laTarea=t;}
  @override
  State<Tarea> createState() {
    print("Create una tarea state ->"+laTarea.toString());
    return new TareaState(laTarea);
  }
}

class TareaState extends State<Tarea> {
  var tst;
  TareaState(ts){ this.tst = ts;}

  void click() {
    print("Click");
    setState(() {
      tst['done'] = !tst['done'];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.cyanAccent,
            ),
            child: Row(
                children:   [
                  if(tst['done'])
                    FlatButton(
                      onPressed: click,
                      child: Icon(Icons.done),
                    )
                  else
                    FlatButton(
                      onPressed: click,
                      child: Icon(Icons.clear),
                    ),
                  if(tst['done'])
                    Text("  "+tst['nombre'].toUpperCase())
                  else
                    Text("  "+tst['nombre'])
                ]
            ),
          );
  }
}

//-----------------------------------------------------------

class MyApp extends StatelessWidget {
  var tar;

  var listatareas = [ {"nombre": "Hola soy una tarea", "done": true},
    {"nombre": "Hola soy una tarea 2", "done": true},
    {"nombre": "Hola soy una tarea 3", "done": true},
    {"nombre": "Hola soy una tarea 4", "done": true},
    {"nombre": "Hola soy una tarea 5", "done": true},
    {"nombre": "Hola soy una tarea 6", "done": true},
    {"nombre": "Hola soy una tarea 7", "done": true},
    {"nombre": "Hola soy una tarea 8", "done": true},
    {"nombre": "Hola soy una tarea 9", "done": true},
    {"nombre": "Hola soy una tarea 10", "done": true}
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to Flutter',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Welcome to Flutter'),
        ),
        body: ListView(
            children: [for(tar in listatareas) Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.blue,
                ),
                child: Tarea(tar)
            )
            ]
        ),
      ),
    );
  }
}



