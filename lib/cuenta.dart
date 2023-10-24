import 'package:bank_familiar/tarjetaimagen.dart';
import 'package:flutter/material.dart';


class cuenta extends StatefulWidget {
  const cuenta({Key? key}) : super(key: key);

  @override
  State<cuenta> createState() => _cuentaState();
}

class _cuentaState extends State<cuenta> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox.square(
            dimension: 30,
          ),
          Padding(padding: EdgeInsets.only(left: 340, right: 40)),
          Text('Hola! Carlos', style: TextStyle(fontSize: 20)),
          Container(
            padding: EdgeInsets.only(top: 0, bottom: 30),
            margin: EdgeInsets.only(
              right: 10,
              left: 10,
              top: 25,
            ),
            decoration: BoxDecoration(
              color: Color(0xffEFBF31),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              children: [
                SizedBox.square(
                  dimension: 20,
                ),
                Row(
                  children: [
                    Padding(padding: EdgeInsets.only(right: 10)),
                    Text('Nombre:',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w500)),
                    Padding(padding: EdgeInsets.only(left: 10)),
                    Text('Carlos Buenos',
                        style:
                        TextStyle(fontSize: 14, color: Color(0xffb5afc7))),
                  ],
                ),
                SizedBox.square(
                  dimension: 20,
                ),
                Row(
                  children: [
                    Padding(padding: EdgeInsets.only(right: 10)),
                    Text('N de Identidad:',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w500)),
                    Padding(padding: EdgeInsets.only(left: 10)),
                    Text('7437674',
                        style:
                        TextStyle(fontSize: 14, color: Color(0xffb5afc7))),
                  ],
                ),
                SizedBox.square(
                  dimension: 20,
                ),
                Row(
                  children: [
                    Padding(padding: EdgeInsets.only(right: 10)),
                    Text('Gmail:',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w500)),
                    Padding(padding: EdgeInsets.only(left: 10)),
                    Text('chdgs@gmail.com',
                        style:
                        TextStyle(fontSize: 14, color: Color(0xffb5afc7))),
                  ],
                ),
                SizedBox.square(
                  dimension: 20,
                ),
                Row(
                  children: [
                    Padding(padding: EdgeInsets.only(right: 10)),
                    Text('Telefono:',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w500)),
                    Padding(padding: EdgeInsets.only(left: 10)),
                    Text('0976345234',
                        style:
                        TextStyle(fontSize: 14, color: Color(0xffb5afc7))),
                  ],
                ),
              ],
            ),
          ),
          SizedBox.square(
            dimension: 60,
          ),
          Stack(
            children: [
              tarjetaimg(),
              Positioned(child: Text('Banco Familiar', style: TextStyle(color: Colors.grey, fontSize: 20)
              ),bottom: 180,left: 5,),
              Positioned(child: Text('CVC',style: TextStyle(color: Colors.grey, fontSize: 8)),bottom: 180, left: 240,),
              Positioned(child: Text('145',style: TextStyle(color: Colors.grey, fontSize: 15)),bottom: 179, left: 259,),
              Positioned(child: Text('4000  0012  3456  7899',style: TextStyle(color: Colors.grey, fontSize: 20)),bottom: 80, left: 25,),
              Positioned(child: Text('valida hasta',style: TextStyle(color: Colors.grey, fontSize: 8)),bottom: 40, left: 140,),
              Positioned(child: Text('30/26',style: TextStyle(color: Colors.grey, fontSize: 20,)),bottom: 39, left: 188,),
              Positioned(child: Text('Carlos Buenos',style: TextStyle(color: Colors.grey, fontSize: 20)),bottom: 10, left: 35,),
            ],
          )
        ],
      ),
    );
  }
}