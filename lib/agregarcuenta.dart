import 'dart:convert';

import 'package:bank_familiar/logobank.dart';
import 'package:bank_familiar/networking/cambios.dart';
import 'package:flutter/material.dart';

import 'package:http/http.dart' as http;


class agregarcuenta extends StatefulWidget {
  const agregarcuenta({Key? key}) : super(key: key);

  @override
  State<agregarcuenta> createState() => _agregarcuentaState();
}

class _agregarcuentaState extends State<agregarcuenta> {
  Cambios? cambios;

  @override
  void initState() {
    getCambios();
    super.initState();
  }

  getCambios() async {
    var url = Uri.https('dolar.melizeche.com', 'api/1.0/');
    var response = await http.get(url,);
    //  print('Response status: ${response.statusCode}');
    //   print('Response body: ${response.body}');

    setState(() {
      cambios = Cambios.fromJson(jsonDecode(response.body));
    });
    print(cambios?.dolarpy?.bcp?.compra.toString());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox.square(dimension: 30,),
              Text('Agregar cuenta',style: TextStyle(
                fontSize: 20,
              ),),

              SizedBox.square(dimension: 30,),
              Padding(
                  padding: EdgeInsets.symmetric(horizontal: 25),
                  child: TextFormField(
                    keyboardType: TextInputType.number,
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Campo Obligatorio';
                      }
                      return null;
                    },
                    //controller: ,
                    decoration: InputDecoration(
                        labelText: 'Nombre',
                        hintText: 'Escribe Nombre Titular'),
                  )),SizedBox.square(dimension: 10,),
              Padding(
                  padding: EdgeInsets.symmetric(horizontal: 25),
                  child: TextFormField(
                    keyboardType: TextInputType.number,
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Campo Obligatorio';
                      }

                      return null;
                    },
                    //controller: ,
                    decoration: InputDecoration(
                        labelText: 'N° de documento',
                        hintText: 'Número de cedula'),
                  )),SizedBox.square(dimension: 10,),
              Padding(
                  padding: EdgeInsets.symmetric(horizontal: 25),
                  child: TextFormField(
                    keyboardType: TextInputType.number,
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Campo Obligatorio';
                      }

                      return null;
                    },
                    //controller: ,
                    decoration: InputDecoration(
                        labelText: 'N° de documento',
                        hintText: 'Número de cedula'),
                  )),SizedBox.square(dimension: 30,),
            Padding(padding: EdgeInsets.symmetric(horizontal: 23)),
            ElevatedButton(onPressed: () async {
          //    var url = Uri.https('dolar.melizeche.com', 'api/1.0/');
           //   var response = await http.get(url,);
            //  print('Response status: ${response.statusCode}');
           //   print('Response body: ${response.body}');

             // setState(() {
            //    cambios = Cambios.fromJson(jsonDecode(response.body));
          //    });


           //   print(cambios?.dolarpy?.bcp?.compra.toString());

        /*      Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => MyHomePage(title: 'Banco Familiar')));*/
            }, child: Center(
                child: Container(
                  height: 20,width: 100,
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Text("Registrarse"),

                )
            )),
                    Text(cambios?.dolarpy?.bcp?.venta.toString()??""),
                    SizedBox.square(dimension: 30,),
                    logobank()

            ],
          ),
        ),
      ),
    );
  }
}
