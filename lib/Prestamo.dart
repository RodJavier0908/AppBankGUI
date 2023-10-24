
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';


class Prestamo extends StatefulWidget {
  const Prestamo({Key? key}) : super(key: key);

  @override
  State<Prestamo> createState() => _PrestamoState();
}

class _PrestamoState extends State<Prestamo> {
  final _importe = TextEditingController();
  final _cuotaquedeseapagar = TextEditingController();


  double _total = 0;
  double _interes = 0;
  double _saldo = 0;
  double _cuotas = 0;
  double _pagarpormes = 0;
  double _mospagarpormes = 0;
  double _moscuotas = 0;
  double _mostotal = 0;
  String saldo='';


  var value;


  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(

        children: <Widget>[
          SizedBox.square(dimension: 20,),
          const Center(
            child: Text('Tu prestamo en tres pasos ', textScaleFactor: 2),

          ),
          SizedBox.square(dimension: 20,),
           Center(
            child: Text('Saldo '+ '$_saldo',style: TextStyle(
              fontSize: 20
            ),),
          ),
          SizedBox.square(dimension: 20,),
          const Center(
            child: Text(
                'ingresa el valor y fecha de vencimineto de \n las cuotas para simular tu prestamo',
                textAlign: TextAlign.center),
            widthFactor: 2,
          ),
          Padding(
            padding: EdgeInsets.only(left: 20, right: 30),
            child: TextFormField(
              keyboardType: TextInputType.number,
              autovalidateMode: AutovalidateMode.onUserInteraction,
              controller: _importe,
              decoration: InputDecoration(
                  icon: Icon(
                    Icons.money,
                  ),
                  suffix: IconButton(
                    onPressed: () {
                      setState(() {
                        _importe.clear();
                      });
                    },
                    icon: Icon(Icons.close),
                  ),
                  labelText: 'Importe',
                  hintText: 'escribe el importe'),
            ),
          ),
          Padding(
              padding: EdgeInsets.only(left: 20, right: 30),
              child: TextField(
                keyboardType: TextInputType.number,
                //autovalidateMode: AutovalidateMode.onUserInteraction,
                controller: _cuotaquedeseapagar,
                decoration: InputDecoration(
                  icon: Icon(Icons.calendar_month),
                    suffix: IconButton(
                      onPressed: () {
                        setState(() {
                          _cuotaquedeseapagar.clear();
                        });
                      },
                      icon: Icon(Icons.close),
                    ),
                    labelText: 'cuantas cuotas quieres pagar', hintText: ''),
              )),


          ElevatedButton(
            onPressed: () {
              _interes=0;
              _total=0;
              _cuotas=0;
              _pagarpormes=0;

              _cuotas=_cuotas + int.parse(_cuotaquedeseapagar.text);
              _interes=_interes+(double.parse(_importe.text)*5/100);
              _total= double.parse(_importe.text) + _interes;
              _pagarpormes=_pagarpormes+(_total/_cuotas);

              showDialog(context: context, builder: ((context) {
                return AlertDialog(
                  title: Text('A prestar!'),
                  actions:[
                    Row(
                      children: [
                        Text('Total a pagar por mes: '+ '$_pagarpormes',maxLines: 12),
                      ],
                    ),
                    SizedBox.square(dimension: 5,),
                    Row(
                      children: [
                        Text('Cuotas: '+ '$_cuotas'),
                      ],
                    ),
                    SizedBox.square(dimension: 5,),
                    Row(
                      children: [
                        Text('Interes: '+ '$_interes'),
                      ],
                    ),
                    SizedBox.square(dimension: 5,),
                    Row(
                      children: [

                        Text('Total con interes: '+'$_total'),
                      ],
                    ),
                    SizedBox.square(dimension: 10,),
                    Row(
                      children: [
                        Text('Saldo real '+ '$_saldo',style: TextStyle(
                          fontSize: 15
                        ),),
                      ],
                    ),

                  ],
                );
              }));

            },
            child: Text('Calcular'),
            style: ButtonStyle(
                padding: MaterialStateProperty.resolveWith(
                        (states) => EdgeInsets.symmetric(horizontal: 50))),
          ),
          ElevatedButton(
            onPressed:() {
              setState(() {

                showDialog(context: context, builder: (context) {
                  return AlertDialog(
                    title: Text('Seguro quieres prestar? '),
                    
                    actions: [
                      Row(
                        children: [
                          Text('cantidad a prestar ' + '$_total'),
                        ],
                      ),
                      Row(
                        children: [
                          Text('Monto por mes a pagar '+ '$_pagarpormes'),
                        ],
                      ),
                      Row(
                        children: [
                          Text('por '+'$_cuotas'+' meses')
                        ],
                      ),
                      Row(
                        children: [
                          SizedBox.square(dimension: 120,),
                          TextButton(onPressed: () {
                            setState(() {
                              Navigator.pop(context);
                            });
                          }, child:Text('no',style: TextStyle(fontSize: 20),),
                          ),
                          TextButton(onPressed: () {
                            setState(() {
                              _saldo=_saldo + _total;
                              _mospagarpormes=_mospagarpormes+_pagarpormes;
                              _moscuotas=_moscuotas+_cuotas;
                              _mostotal=_mostotal+_total;

                              saldo=saldo+_saldo.toString();
                             Navigator.pop(context);
                            });
                          }, child:Text('si',style: TextStyle(fontSize: 20),),
                          ),
                        ],
                      ),
                    ],
                  );
                },);

              });

            },
            child: Text('Solicitar'),
            style: ButtonStyle(
              padding: MaterialStateProperty.resolveWith(
                      (states) => EdgeInsets.symmetric(horizontal: 50)),
            ),
          ),

          SizedBox.square(dimension: 30,),

          Container(
              child: Column(
                children: [
                  Text('Por mes '+ '$_mospagarpormes',maxLines: 12,style: TextStyle(
                    fontSize: 20,
                  ),),
                  Text('Cuotas '+ '$_moscuotas',style: TextStyle(
                      fontSize: 20
                  ),),
                  Text('Total '+ '$_mostotal',style: TextStyle(
                      fontSize: 20
                  ),),
                  SizedBox.square(dimension: 30,),
                  ElevatedButton(onPressed: () {
                    showDialog(context: context, builder: (context) {
                      return AlertDialog(
                        title: Text('pagar cuota?'),
                        actions: [
                          ElevatedButton(onPressed: () {
                            setState(() {
                              Navigator.pop(context);
                            });
                          }, child: Text('No')),
                          ElevatedButton(onPressed: () {
                            setState(() {
                              if(_moscuotas == 1.0){
                                _mospagarpormes=0;
                              }
                              if(_mostotal == 0.0){
                                return setState(() {
                                  Navigator.pop(context);
                                });
                              }else{
                                _moscuotas=_moscuotas-1;
                                _mostotal=_mostotal-_pagarpormes;
                                Navigator.pop(context);
                              }
                            });
                          }, child: Text('Si'))
                        ],
                      );

                    },);
                  }, child: Text('pagar cuota'))
                ],
              ),
            height: 200,width: 300,
            decoration: BoxDecoration(
              color: Colors.amber,
              borderRadius: BorderRadius.circular(15),
              border: Border.all(color: Colors.white)
            ),
          )




        ],
      ),
    );
  }
}
