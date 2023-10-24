
import 'package:bank_familiar/inicio.dart';
import 'package:bank_familiar/logobank.dart';
import 'package:bank_familiar/myhome.dart';
import 'package:bank_familiar/registracion.dart';
import 'package:flutter/material.dart';

class registro extends StatefulWidget {
  const registro({Key? key}) : super(key: key);

  @override
  State<registro> createState() => _registroState();
}

class _registroState extends State<registro> {
  final _usu=TextEditingController();
  final _pin=TextEditingController();


  void usuincorrecto(){
    setState(() {
      showDialog(context: context, builder: (context) {
        return AlertDialog(

          content: Text('usuario incorrecto!!'),
          actions: [
            TextButton(onPressed: () {
              Navigator.pop(context);
            }, child: Text('Aceptar')),

          ],
        );
      },barrierDismissible: false);
    });
  }
  void pinincorrecto(){
    setState(() {
      showDialog(context: context, builder: (context) {
        return AlertDialog(

          content: Text('pin incorrecto!!'),
          actions: [
            TextButton(onPressed: () {
              Navigator.pop(context);
            }, child: Text('Aceptar')),

          ],
        );
      },barrierDismissible: false);
    });
  }
  void campovacio(){
    setState(() {
      showDialog(context: context, builder: (context) {
        return AlertDialog(

          content: Text('Complete los campos!'),
          actions: [
            TextButton(onPressed: () {
              Navigator.pop(context);
            }, child: Text('Aceptar')),

          ],
        );
      },barrierDismissible: false);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: SafeArea(
        child: Center(
            child: SingleChildScrollView(
              child:  Column(
                children: [

                  logobank(),
                  Padding(padding: EdgeInsets.only(top: 60)),
                  SizedBox.square(
                    dimension: 0,
                  ),
                  Padding(
                      padding: EdgeInsets.symmetric(horizontal: 60),
                      child: TextFormField(
                        keyboardType: TextInputType.text,
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Campo Obligatorio';
                          }

                          return null;
                        },
                        controller: _usu,
                        decoration: InputDecoration(
                            labelText: 'Usuario',
                            hintText: ''),
                      )),
                  SizedBox.square(
                    dimension: 27.6,
                  ),
                  Padding(
                      padding: EdgeInsets.symmetric(horizontal: 60),
                      child: TextFormField(
                        keyboardType: TextInputType.number,
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Campo obligatorio';
                          }
                          return null;
                        },
                        controller: _pin,
                        decoration: InputDecoration(
                            labelText: 'Pin', hintText: ''),

                        obscureText: true,
                      )),
                  SizedBox.square(
                      dimension: 60),
                  Row(
                    children: [
                      Padding(padding: EdgeInsets.only( left: 65)),
                      ElevatedButton(
                          onPressed: () {

                                Navigator.of(context).push(MaterialPageRoute(builder: (context) => MyHomePage(title: 'Banco Familiar'),));

                          },
                          child: Center(child: Container(
                            height: 50,
                            width: 200,
                            child: Text('Ingresar', style: TextStyle(
                                color: Color(0xffd9d9d9), fontSize: 20
                            ),),
                            padding: EdgeInsets.only(left: 65, top: 12),

                          ),

                          )),

                    ],
                  ),

                  Row(children: [
                    Padding(padding: EdgeInsets.only(left: 80)),
                    Text('   No esta registrado'),
                    TextButton(onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => crearcuenta()));
                    }, child: Text('cree una',style: TextStyle(
                        color: Colors.blue
                    ),
                    )
                    ),

                  ],
                  ),

                ],
              ),
            )

        ),
      ),
      backgroundColor: Color(0xffbfd4d1),
    );
  }
}
