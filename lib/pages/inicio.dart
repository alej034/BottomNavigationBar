import 'package:flutter/material.dart';

class page_home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Ejemplo de Colunm'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,  // Centra los widgets verticalmente
            crossAxisAlignment: CrossAxisAlignment.start,  // Alinea los widgets a la izquierda
            children: <Widget>[
              Text(
                "Primer Texto",
                style: TextStyle(fontSize: 24),
              ),
              SizedBox(height: 20), // Espacio entre los widgets
              Text(
                "Segundo Texto",
                style: TextStyle(fontSize: 24),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  // Acción del botón
                },
                child: Text("Botón"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
