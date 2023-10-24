
import 'package:bank_familiar/myhome.dart';
import 'package:flutter/material.dart';



class crearcuenta extends StatefulWidget {
  const crearcuenta({Key? key}) : super(key: key);

  @override
  State<crearcuenta> createState() => _crearcuentaState();
}

class _crearcuentaState extends State<crearcuenta> {
  final _nombreapellido = TextEditingController();
  final _numeroci = TextEditingController();
  final _gmail = TextEditingController();
  final _contrasea = TextEditingController();
  final _contrasea2 = TextEditingController();
  final _telefono = TextEditingController();

  String nombreape= '';
  String numeroci= '';
  String gmail= '';
  String contrasea= '';
  String telefono= '';

   String msj='contraseña coincide';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffbfd4d1),
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
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
                      //controller: ,
                      decoration: InputDecoration(
                          labelText: 'Nombre y apellido',
                          hintText: 'Escriba su nombre'),
                    )),
                Padding(
                    padding: EdgeInsets.symmetric(horizontal: 60),
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
                    )),
                Padding(
                    padding: EdgeInsets.symmetric(horizontal: 60),
                    child: TextFormField(
                      keyboardType: TextInputType.emailAddress,
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Campo Obligatorio';
                        }
                        return null;
                      },
                      //controller: ,
                      decoration: InputDecoration(
                          labelText: 'Gmail',
                          hintText: 'Cuenta de Gmail'),
                    )),
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
                      controller: _contrasea,
                      decoration: InputDecoration(
                          labelText: 'Contraseña',
                          hintText: 'Nueva contraseña'),
                      obscureText: true,
                    )),
                Padding(
                    padding: EdgeInsets.symmetric(horizontal: 60),
                    child: TextFormField(
                      keyboardType: TextInputType.text,
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      validator: (value) {
                        if (value == _contrasea2) {
                          return 'no coinside';
                        }
                          return msj;
                      },
                      controller: _contrasea2,
                      decoration: InputDecoration(
                          labelText: 'Confirme contraseña',
                          hintText: 'repita su contraseña'),
                      obscureText: true,
                    )),
                Padding(
                    padding: EdgeInsets.symmetric(horizontal: 60),
                    child: TextFormField(
                      keyboardType: TextInputType.number,
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Campo Obligatorio';
                        }

                        return null;
                      },
                      controller: _telefono,
                      decoration: InputDecoration(
                          labelText: 'Telefono',
                          hintText: 'Número de telefóno o celular'),
                    )),
                SizedBox.square(dimension: 30),
                Row(
                  children: [

                    Padding(padding: EdgeInsets.symmetric(horizontal: 60)),
                    ElevatedButton(onPressed: () {

                      nombreape=_nombreapellido.text;
                      numeroci=_numeroci.text;
                      gmail=_gmail.text;
                      contrasea=_contrasea.text;
                      telefono=_telefono.text;

                      print(nombreape+' '+numeroci+' '+gmail+' '+contrasea+' '+telefono);

                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => MyHomePage(title: 'Banco Familiar')));
                    }, child: Center(
                        child: Container(
                          height: 20,width: 100,
                          padding: EdgeInsets.symmetric(horizontal: 20),
                          child: Text("Registrarse"),
                        )
                    ))
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
