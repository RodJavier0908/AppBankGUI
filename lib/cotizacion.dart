import 'dart:convert';
import 'package:bank_familiar/logobank.dart';
import 'package:bank_familiar/networking/cambios.dart';
import 'package:http/http.dart' as http;

import 'package:flutter/material.dart';


class Coti extends StatefulWidget {
  const Coti({Key? key}) : super(key: key);

  @override
  State<Coti> createState() => _CotiState();
}

class _CotiState extends State<Coti> {

  Cambios? cambios;

  @override
  void initState() {
    getCambios();
    super.initState();
  }

  getCambios() async {
    var url = Uri.https('dolar.melizeche.com', 'api/1.0/');
    var response = await http.get(
      url,
    );
    //  print('Response status: ${response.statusCode}');
    //   print('Response body: ${response.body}');

    setState(() {
      cambios = Cambios.fromJson(jsonDecode(response.body));
    });
    (cambios?.dolarpy?.bcp?.compra.toString());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffbfd4d1),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.only(bottom: 23),
                margin: const EdgeInsets.only(left: 30, right: 30, top: 30),
                decoration: BoxDecoration(
                    color: const Color(0xffbfd4d1),
                    border: Border.all(color: const Color(0xffEFBF31)),
                    borderRadius: BorderRadius.circular(20)),
                child: Column(
                  children: [
                    const Padding(padding: EdgeInsets.only(right: 3500, top: 30)),
                    const Text(
                      'Cotizacion del dia del Dolar',
                      style: TextStyle(fontSize: 24),
                    ),
                    const SizedBox.square(
                      dimension: 0,
                    ),
                    Row(
                      children: const [
                         Padding(
                            padding: EdgeInsets.symmetric(
                                vertical: 40, horizontal: 65)),
                        Text(' Compra'),
                        Padding(padding: EdgeInsets.symmetric(horizontal: 18)),
                        Text(' Venta')
                      ],
                    ),
                    const SizedBox.square(
                      dimension: 0,
                    ),
                    Row(
                      children: [
                        const Text(' Vision:'),
                        const Padding(padding: EdgeInsets.symmetric(horizontal: 48)),
                        Text(cambios?.dolarpy?.vision?.compra.toString() ?? ""),
                        const Padding(padding: EdgeInsets.symmetric(horizontal: 15)),
                        Text(cambios?.dolarpy?.vision?.venta.toString() ?? ""),
                      ],
                    ),
                    const SizedBox.square(
                      dimension: 30,
                    ),
                    Row(
                      children: [
                        const Text(' set:'),
                        const Padding(padding: EdgeInsets.symmetric(horizontal: 57)),
                        Text(cambios?.dolarpy?.set?.compra.toString() ?? ""),
                        const Padding(padding: EdgeInsets.symmetric(horizontal: 15)),
                        Text(cambios?.dolarpy?.set?.venta.toString() ?? ""),
                      ],
                    ),
                    const SizedBox.square(
                      dimension: 30,
                    ),
                    Row(
                      children: [
                        const Text(' Bcp'),
                        const Padding(padding: EdgeInsets.symmetric(horizontal: 56)),
                        Text(cambios?.dolarpy?.bcp?.compra
                            .toString() ??
                            ""),
                        const Padding(padding: EdgeInsets.symmetric(horizontal: 11)),
                        Text(cambios?.dolarpy?.bcp?.venta
                            .toString() ??
                            ""),
                      ],
                    ),
                    const SizedBox.square(
                      dimension: 30,
                    ),
                    Row(
                      children: [
                        const Text(' Cambios Chaco:'),
                        const Padding(padding: EdgeInsets.symmetric(horizontal: 18)),
                        Text(
                            cambios?.dolarpy?.cambioschaco?.compra.toString() ??
                                ""),
                        const Padding(padding: EdgeInsets.symmetric(horizontal: 15)),
                        Text(cambios?.dolarpy?.cambioschaco?.venta.toString() ??
                            ""),
                      ],
                    ),
                    const SizedBox.square(
                      dimension: 30,
                    ),
                    Row(
                      children: [
                        const Text(' Mundial Cambios'),
                        const Padding(padding: EdgeInsets.symmetric(horizontal: 14)),
                        Text(cambios?.dolarpy?.mundialcambios?.compra
                                .toString() ??
                            ""),
                        const Padding(padding: EdgeInsets.symmetric(horizontal: 15)),
                        Text(cambios?.dolarpy?.mundialcambios?.venta
                                .toString() ??
                            ""),
                      ],
                    ),

                  ],

                ),
              ),
              logobank(),
            ],
          ),
        ),
      ),
    );
  }
}
