import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/buscar.dart';
import 'package:flutter_application_1/pages/inicio.dart';
import 'package:flutter_application_1/pages/perfil.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Página de Inicio',
      home: HomeScreen(),
      
    );
  }
}

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
  
}

//clase en la que abarca nuestro contenido

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;

//creacion de la lista donde estan las toguinas usadas  
  List<Widget> paguina = [
    page_home(),
    page_search(),
    page_perfil()
  ];
// accion al dar tap en el navigationbar
  void _onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        
      ),
      body: paguina[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: _onTabTapped,

        // implementacion del navigationbar
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Inicio",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: "Buscar",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle_rounded),
            label: "Perfil",
          ),
        ],
      ),
    );
  }
}


