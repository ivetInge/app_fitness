import 'dart:math';
import 'package:flutter/material.dart';
import 'package:imc/features/presentation/pages/contador_pasos/widgets/counterContainer/counter_container.dart';
import 'package:imc/features/presentation/pages/contador_pasos/widgets/dataAppCounter/data_app_counter.dart';
import 'package:imc/features/presentation/pages/contador_pasos/widgets/distance/distance.dart';
import 'dart:async';


// ignore: import_of_legacy_library_into_null_safe
import 'package:pedometer/pedometer.dart';

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String muestrePasos = "";
  String _km = "Unknown";
  String _calories = "Unknown";

  String _stepCountValue = 'Unknown';
  // ignore: unused_field
  late StreamSubscription<int> _subscription;

  double? _numerox; //numero pasos
  // ignore: unused_field
  double? _convert;
  double? _kmx;
  double? burnedx;
  // double percent=0.1;

  



  @override
  Widget build(BuildContext context) {
    //print(_stepCountValue);
    getBurnedRun();
    return Scaffold(
        appBar: AppBar(
          title: const Text('Contador de Pasos'),
          backgroundColor: const Color(0xfff01dfd),
        ),
        body: Container(
          decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/background.jpg"),
            fit: BoxFit.cover,
          ),
        ),
          child: ListView(
            padding: const EdgeInsets.all(5.0),
            children: <Widget>[
              RuedaContador(stepCountValue: _stepCountValue),
              const Divider(
                height: 5.0,
              ),
              ImagenesApp(km: _km),
              const Divider(
                height: 2,
              ),
              DatosApp(km: _km, calories: _calories, stepCountValue: _stepCountValue),
            ],
          ),
        ),
    );
  }


  @override
  void initState() {
    super.initState();
    //initPlatformState();
    setUpPedometer();
  }

  //inicia codigo pedometer
  void setUpPedometer() {
    Pedometer pedometer = Pedometer();

    _subscription = pedometer.stepCountStream.listen(_onData,
        onError: _onError, onDone: _onDone, cancelOnError: true);
  }

  void _onData(int stepCountValue) async {
    // print(stepCountValue); //impresion numero pasos por consola
    setState(() {
      _stepCountValue = "$stepCountValue";
      // print(_stepCountValue);
    });

    var dist = stepCountValue; //pasamos el entero a una variable llamada dist
    double y = (dist + .0); //lo convertimos a double una forma de varias

    setState(() {
      _numerox =
          y; //lo pasamos a un estado para ser capturado ya convertido a double
    });

    var long3 = (_numerox);
    long3 = double.parse(y.toStringAsFixed(2));
    var long4 = (long3 / 10000);

    int decimals = 1;
    num fac = pow(10, decimals);
    double d = long4;
    d = (d * fac).round() / fac;

    getDistanceRun(_numerox!);

    setState(() {
      _convert = d;
    });
  }

  void reset() {
    setState(() {
      int stepCountValue = 0;
      stepCountValue = 0;
      _stepCountValue = "$stepCountValue";
    });
  }

  void _onDone() {}

  void _onError(error) {
  }

  //function to determine the distance run in kilometers using number of steps
  void getDistanceRun(double _numerox) {
    var distance = ((_numerox * 78) / 100000);
    distance = double.parse(distance.toStringAsFixed(2)); //dos decimales
    var distancekmx = distance * 34;
    distancekmx = double.parse(distancekmx.toStringAsFixed(2));
    //print(distance.runtimeType);
    setState(() {
      _km = "$distance";
      //print(_km);
    });
    setState(() {
      _kmx = double.parse(distancekmx.toStringAsFixed(2));
    });
  }

  //function to determine the calories burned in kilometers using number of steps
  void getBurnedRun() {
    setState(() {
      var calories = _kmx; //dos decimales
      _calories = "$calories";
      //print(_calories);
    });
  }

    //fin codigo pedometer
}






