import 'package:flutter/material.dart';

class tarjetaimg extends StatelessWidget {
  const tarjetaimg({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Image.asset('img/tarjeta.png'),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20)
      ),
    );
  }
}
