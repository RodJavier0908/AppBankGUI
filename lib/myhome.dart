
import 'dart:io';

import 'package:bank_familiar/Condicion%20y%20politica.dart';
import 'package:bank_familiar/Prestamo.dart';
import 'package:bank_familiar/Transacion.dart';
import 'package:bank_familiar/cotizacion.dart';
import 'package:bank_familiar/cuenta.dart';
import 'package:bank_familiar/inicio.dart';
import 'package:bank_familiar/movimiento.dart';
import 'package:bank_familiar/registracion.dart';
import 'package:flutter/material.dart';

enum Menu { itemOne, itemTwo, itemThree, itemFour }
class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  int _selectedIndex = 2;

  static const TextStyle optionStyle =
  TextStyle(fontSize: 30, fontWeight: FontWeight.bold);

  String _selectedMenu = '';

  static const List<Widget> _widgetOptions = <Widget>[

    movimiento(),cuenta(),inicio(),transaccion(),Prestamo()

  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
  String saldo='';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        //leading:,
        actions:[ PopupMenuButton<Menu>(
          // Callback that sets the selected popup menu item.
            padding: EdgeInsets.symmetric(horizontal: 5),
            color: Color(0xff92986c),
            onSelected: (Menu item) {
              setState(() {
                _selectedMenu = item.name;
              });
            },
            icon: const Icon(Icons.list),
            itemBuilder: (BuildContext context) => <PopupMenuEntry<Menu>>[
              PopupMenuItem<Menu>(
                value: Menu.itemOne,
                child: ListTile(title: Text('Registro'), trailing: Icon(Icons.account_box, ), onTap: () {
                  Navigator.of(context).pop();
                  Navigator.of(context).push(MaterialPageRoute(builder:(context) => const crearcuenta()));
                },),
              ),
              PopupMenuItem<Menu>(
                value: Menu.itemTwo,
                child: ListTile(title: Text('Cotizacion'), trailing: Icon(Icons.account_balance_sharp, ),onTap: () {
                  Navigator.of(context).pop();
                  Navigator.of(context).push(MaterialPageRoute(builder:(context) => const Coti()));
                },),

              ),
              PopupMenuItem<Menu>(
                value: Menu.itemThree,
                child: ListTile(title: Text('Condicion y Politica'), trailing: Icon(Icons.article, ),onTap: () {
                  Navigator.of(context).pop();
                  Navigator.of(context).push(MaterialPageRoute(builder:(context) => condi()));
                },),
              ),
              PopupMenuItem<Menu>(
                value: Menu.itemFour,
                child: ListTile(title: Text('Salir'), trailing: Icon(Icons.exit_to_app, ),onTap: () {
                  Navigator.of(context).pop();
                  Navigator.of(context).push(MaterialPageRoute(builder:(context) => exit(0)));
                },),
              ),
            ]),
        ],
      ),
      resizeToAvoidBottomInset: true,
      backgroundColor: Color(0xffbfd4d1),
      body: _widgetOptions[_selectedIndex],
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          //codigo cuando se aprieta el boton
          // Navigator.of(context).push(MaterialPageRoute(builder: (context) => pagina donde quieres q vaya ));
        },
        child: const Icon(Icons.qr_code_2,
            shadows: [BoxShadow(color: Colors.white10, blurRadius: 15)]),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.history),
            label: 'Movimiento',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Cuenta',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Inicio',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.north_east),
            label: 'Transaccion',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.payment),
            label: 'Prestamo',
          ),
        ],
        currentIndex: _selectedIndex,
        backgroundColor: Colors.pink,
        iconSize: 25,
        selectedItemColor: Color(0xffb5afc7),
        unselectedItemColor: Colors.grey,
        onTap: _onItemTapped,
      ),
    );
  }
}

