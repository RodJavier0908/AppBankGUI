import 'package:flutter/material.dart';

class movimiento extends StatefulWidget {
  const movimiento({Key? key}) : super(key: key);

  @override
  State<movimiento> createState() => _movimientoState();
}

class _movimientoState extends State<movimiento> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox.square(dimension: 40,),
            Center(
              child: Text("Movimientos",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 30, left: 25, right: 25),
              height: 5000,
              padding: EdgeInsets.only(top: 20),
              child: Column(
                children: [
                  Text("Tipo                 fecha                  valor \n  "
                      "                                                       " ),
                  Text("   Prestó             08/09/2022            300000GS\n  "
                      "                                                       "),
                  Text("   Prestó             08/09/2022            300000GS\n  "
                      "                                                       "),
                  Text("   Prestó             08/09/2022            300000GS\n  "
                      "                                                       "),
                ],
              ),
              decoration: BoxDecoration(
                  color: Color(0xffbfd4d1),
                  border: Border.all(color: Color(0xffEFBF31)),
                  borderRadius: BorderRadius.circular(15)
              ),
            )
          ],
        ),
      ),
    );
  }
}