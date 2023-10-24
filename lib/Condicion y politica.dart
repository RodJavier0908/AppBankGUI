import 'package:flutter/material.dart';

class condi extends StatefulWidget {

  @override
  State<condi> createState() => _condiState();
}

class _condiState extends State<condi> {
  @override
  Widget build(BuildContext context) {
     return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(padding: EdgeInsets.only(left:3000, top: 30 )),
            Text('Condicion y Politicas', style: TextStyle(
                fontSize: 30
            ),)
          ],
        ),
      ),
    );
  }
}
