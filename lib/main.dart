
import 'package:bank_familiar/registro.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Banco Familiar',
      theme: ThemeData(
        primarySwatch: Colors.amber,
        useMaterial3: true

      ),
      debugShowCheckedModeBanner: false,
      home: const registro(),
    );
  }
}
