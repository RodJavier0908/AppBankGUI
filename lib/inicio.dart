import 'package:bank_familiar/Prestamo.dart';
import 'package:bank_familiar/logobank.dart';

import 'package:flutter/material.dart';
import 'package:http/http.dart';


class inicio extends StatefulWidget {
 const inicio({Key? key}) : super(key: key);



  @override
  State<inicio> createState() => _inicioState();
}

class _inicioState extends State<inicio> {
  String usuario='Carlos';

  double _saldo = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [

          Container(
            height: 250,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Padding(padding: EdgeInsets.only(right: 10)),
                Container(
                  height: 150,
                  width: 340,
                  margin: EdgeInsets.only(top: 14, left: 0, right: 10, bottom: 0),
                  child: Column(
                    children: [

                      Text('Hola! '+usuario, style: TextStyle(
                          fontSize: 20
                      )),
                      Padding(padding: EdgeInsets.only(top: 150,)),
                      Text('$_saldo', style: TextStyle(
                            fontSize: 40,
                            fontWeight: FontWeight.w600,
                            color: Color(0xffd9d9d9)),
                      )
                    ],
                  ),
                  decoration: BoxDecoration(
                      color: Color(0xffEFBF31),
                      borderRadius: BorderRadius.circular(15)),
                ),

              ],
            ),
          ),
          SizedBox.square(
            dimension: 10,
          ),
          Expanded(
              child: ListView(
                children: [
                  SizedBox.square(dimension: 20,),
                  logobank()
                  /*Container(
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                child: Text('Movimientos recientes'),
                margin: EdgeInsets.only(top: 30, left: 30, right: 30),
                height: 2000,
                width: 300,
                decoration: BoxDecoration(
                    color: Color(0xffbfd4d1),
                    border: Border.all(color: Color(0xffEFBF31)),
                    borderRadius: BorderRadius.circular(15)),
                  ),
                */
                ],
              )),
        ],
      ),
    );
  }
}
