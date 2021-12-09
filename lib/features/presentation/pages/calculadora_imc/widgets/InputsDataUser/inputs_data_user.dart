import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class EntradaDatos extends StatelessWidget {
  const EntradaDatos({
    Key? key,
    required this.controllerPeso,
    required this.controllerTalla,
  }) : super(key: key);

  final TextEditingController controllerPeso;
  final TextEditingController controllerTalla;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 40),
      child: Column(
        children: <Widget>[
          Container(
            width: 115,
            height: 50,
            padding: const EdgeInsets.all(7),
            decoration: const BoxDecoration(
                borderRadius:
                    BorderRadius.all(Radius.circular(50)),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(color: Colors.black, blurRadius: 5)
                ]),
            child: TextFormField(
              controller: controllerPeso,
              validator: (value) {
                if (value!.isEmpty) return "Digita el Peso Kg";
              },
              decoration: const InputDecoration(
                  hintText: "Peso Kg",
                  icon: Icon(Icons.account_balance_wallet,
                      color: Colors.purpleAccent)),
              keyboardType: TextInputType
                  .number, //solo abre el teclado numerico
            ),
          ),
          const Divider(), //para separar
          Container(
            width: 115,
            height: 50,
            padding: const EdgeInsets.all(7),
            decoration: const BoxDecoration(
                borderRadius:
                    BorderRadius.all(Radius.circular(50)),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(color: Colors.black, blurRadius: 5)
                ]),
            child: TextFormField(
              controller: controllerTalla,
              validator: (value) {
                if (value!.isEmpty) return "Digita Estatura Cm";
              },
              decoration: const InputDecoration(
                  hintText: "Estatura Cm",
                  icon: Icon(Icons.present_to_all,
                      color: Colors.blueAccent)),
              keyboardType: TextInputType.number,
            ),
          ),
        ],
      ),
    );
  }
}
