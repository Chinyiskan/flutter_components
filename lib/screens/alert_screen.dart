import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AlertScreen extends StatelessWidget {
  const AlertScreen({Key? key}) : super(key: key);

  void displayDiaogIOS(BuildContext context) {
    showCupertinoDialog(
        barrierDismissible: false,
        context: context,
        builder: (context) {
          return CupertinoAlertDialog(
            title: const Text('Titulo'),
            content: Column(mainAxisSize: MainAxisSize.min, children: const [
              Text('Este es el contenido de la alerta'),
              SizedBox(
                height: 10,
              ),
              FlutterLogo(
                size: 100,
              )
            ]),
            actions: [
              TextButton(
                  onPressed: () => Navigator.pop(context),
                  child: const Text(
                    'Cancelar',
                    style: TextStyle(color: Colors.red),
                  )),
              TextButton(
                  onPressed: () => Navigator.pop(context),
                  child: const Text('ok'))
            ],
          );
        });
  }

  void displayDiaogAndroid(BuildContext context) {
    showDialog(
        barrierDismissible: false,
        context: context,
        builder: (context) {
          return AlertDialog(
            elevation: 5,
            title: const Text('Titulo'),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
            content: Column(mainAxisSize: MainAxisSize.min, children: const [
              Text('Este es el contenido de la alerta'),
              SizedBox(
                height: 10,
              ),
              FlutterLogo(
                size: 100,
              )
            ]),
            //Aqui se crea un boton dentro del ciadro de dialogo con la posibilidad de cerrarlo.
            actions: [
              TextButton(
                  onPressed: () => Navigator.pop(context),
                  child: const Text('Cancelar')),
              TextButton(
                  onPressed: () => Navigator.pop(context),
                  child: const Text('ok'))
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: ElevatedButton(
              // style: ElevatedButton.styleFrom(
              //     backgroundColor: Colors.red,
              //     shape: const StadiumBorder(),
              //     elevation: 0),
              child: const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                child: Text(
                  'Mostrar alerta',
                  style: TextStyle(fontSize: 16),
                ),
              ),
              //onPressed: () => displayDiaogAndroid(context)
              onPressed: () => Platform.isAndroid
                  ? displayDiaogAndroid(context)
                  : displayDiaogIOS(context))),
      floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.close),
          onPressed: () => Navigator.pop(context)),
    );
  }
}
