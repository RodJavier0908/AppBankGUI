
import 'package:bank_familiar/agregarcuenta.dart';
import 'package:flutter/material.dart';




class transaccion extends StatefulWidget {
  const transaccion({Key? key}) : super(key: key);

  @override
  State<transaccion> createState() => _transaccionState();
}

class _transaccionState extends State<transaccion> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(padding: EdgeInsets.only(left: 50, right: 300, top: 30)),
          Text('A quien quieres tranferir', style: TextStyle(
              fontSize: 22, fontWeight: FontWeight.w500
          ),),
          Padding(padding: EdgeInsets.only( top: 40)),
          Row(children: [
            Padding(padding: EdgeInsets.only(left: 30)),
            Icon(Icons.person,size: 60),
            Padding(padding: EdgeInsets.only(left: 20)),
            Icon(Icons.person,size: 60),
            Padding(padding: EdgeInsets.only(left: 20)),
            Icon(Icons.person,size: 60),
            Padding(padding: EdgeInsets.only(left: 20)),
            Icon(Icons.person,size: 60),
          ],),

          Padding(padding: EdgeInsets.symmetric(vertical: 180)),
          ElevatedButton(onPressed: (){
            Navigator.of(context).push(MaterialPageRoute(builder:(context) => const agregarcuenta()));
          }, child: Container(
            height: 30,
            width: 50,
            child: Icon(Icons.person_add),

          ))



        ],
      ),
    );
  }
}