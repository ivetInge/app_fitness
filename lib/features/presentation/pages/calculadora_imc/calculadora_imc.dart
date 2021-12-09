import 'dart:math';

import 'package:decimal/decimal.dart';
import 'package:flutter/material.dart';
import 'package:imc/features/presentation/pages/calculadora_imc/widgets/ImageMain/image_main.dart';
import 'package:imc/features/presentation/pages/calculadora_imc/widgets/HeightRecommended/height_recommended.dart';
import 'package:imc/features/presentation/pages/calculadora_imc/widgets/ShowIMC/show_imc.dart';
import 'package:imc/features/presentation/pages/calculadora_imc/widgets/InputsDataUser/inputs_data_user.dart';
import 'package:imc/features/presentation/pages/calculadora_imc/widgets/image_details.dart';
import 'package:imc/main.dart';

class Calculadora extends State<MyCalculator> {
  //dentro instanciamos los controles que vienen de andrio studio
  final controllerPeso = TextEditingController();
  final controllerTalla = TextEditingController();
  final myFormKey = GlobalKey<FormState>();
  final d = Decimal; //para que redonde los decimales a solos dos decimales

  String muestreImc = ""; //declaramos variables para que nos muestre
  String pesoSugerido = "";

  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false, //para ajustar el teclado del celular
      appBar: AppBar(
        title: const Text('Calculadora IMC'),
        backgroundColor: const Color(0xfff01dfd),
      ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/background.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Form(
            key: myFormKey,
            child: SingleChildScrollView(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: <Widget>[
                    const ImageMain(),
                    //agregamos un Container
                    EntradaDatos(controllerPeso: controllerPeso, controllerTalla: controllerTalla),
                    const Divider(
                      //para separar
                      height: 30.0,
                    ),
                    /* Botones Hombre / Mujer */
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        TextButton(
                          //nos va a mostrar los botones
                          onPressed: pesoIdealMujer,
                          style: TextButton.styleFrom(
                            padding: const EdgeInsets.all(10.0),
                            primary: Colors.pinkAccent,
                            textStyle: const TextStyle(fontSize: 20),
                          ),
                          child: Column(
                            children: const <Widget>[
                              Icon(Icons.person),
                              Text('Mujer')
                            ],
                          ),
                        ),
                        const VerticalDivider(), //para que dentro de esa fila haga un espacio vertical
                        TextButton(
                          //nos va a mostrar los botones
                          onPressed: pesoIdealHombre,
                          style: TextButton.styleFrom(
                            padding: const EdgeInsets.all(10.0),
                            primary: Colors.blueAccent,
                            textStyle: const TextStyle(fontSize: 20),
                          ),
                          child: Column(
                            children: const <Widget>[
                              Icon(Icons.person),
                              Text('Hombre')
                            ],
                          ),
                        ),
                      ],
                    ),
                    const Divider(
                      height: 40.0,
                    ),
                    //caja de resultado
                    ShowIMC(muestreImc),
                    const Divider(
                      height: 15.0,
                    ),
                    HeightRecommended(pesoSugerido),
                    const Divider(
                      height: 1,
                    ),
                    const ImageDetails(),
                  ],
                ))),
      ),
    );
  }


//Métodos


//creamos la clase para calcular peso mujer
  void pesoIdealMujer() {
    int pesoidealm = 21;
    int decimals = 2; //solo me muestre dos decimales
    num fad = pow(10, decimals); //formula para remover decimales

    //realizamos las validaciones si algun campo este vacio
    if (myFormKey.currentState!.validate()) {
      double peso = double.parse(controllerPeso.text);
      double altura = double.parse(controllerTalla.text);
      double rtaAltura = (altura) / 100; //respuesta de altura
      double alturapordos = rtaAltura * rtaAltura;
      double result = peso / alturapordos;

      double d = result; //redondear a dos decimales
      d = (d * fad).round() / fad;

      //formula para sugerir el peso de la persona
      double sugerido = (pesoidealm * peso) / d;
      sugerido = (sugerido * fad).round() / fad;

      setState(() {
        //muestra el resultado, lo llamamos con el signo de peso
        muestreImc = "IMC es: $d";
      });

      setState(() {
        pesoSugerido = "Peso ideal es: $sugerido Kg";
      });
    }
  }

  //formula para el hombre
  void pesoIdealHombre() {
    int pesoidealh = 24;
    int decimals = 2; //solo me muestre dos decimales
    num fad = pow(10, decimals); //formula mayor a 10 decimales

    //realizamos las validaciones si algun campo este vacio
    if (myFormKey.currentState!.validate()) {
      double peso = double.parse(controllerPeso.text);
      double altura = double.parse(controllerTalla.text);
      double rtaAltura = (altura) / 100;
      double alturapordos = rtaAltura * rtaAltura;
      double result = peso / alturapordos;

      double d = result;
      d = (d * fad).round() / fad;

      //formula para sugerir el peso de la persona
      double sugerido = (pesoidealh * peso) / d;
      sugerido = (sugerido * fad).round() / fad;

      setState(() {
        muestreImc = "IMC es: $d";
      });

      setState(() {
        pesoSugerido = "Peso ideal es: $sugerido Kg";
      });
    }
  }

  //Formula para hacer una operacion arimetica
  //lo que esten perdidos con la formula vamos a crear una mas simple
  void operacionMatematica() {
    //realizamos las validaciones si algun campo este vacio
    if (myFormKey.currentState!.validate()) {
      double numero1 = double.parse(controllerPeso.text);
      double numero2 = double.parse(controllerTalla.text);

      double result = numero1 / numero2;
      //lo puede cambiar por +  o  - o *

      setState(() {
        muestreImc = "La division es: $result";
      });
    }
  }

  //ahora realizaremos el layout o diseño de nuestra calculadora
//de indice de masa corporal





}

