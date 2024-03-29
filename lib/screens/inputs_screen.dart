import 'package:flutter/material.dart';

class InputsScreen extends StatelessWidget {
  const InputsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Inputs y Form'),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Column(children: [
              TextFormField(
                  autofocus: true,
                  initialValue: '',
                  textCapitalization: TextCapitalization.words,
                  onChanged: (value) {
                    print('value: $value');
                  },
                  validator: (value) {
                    if (value == null) return 'Este campo es requerido';
                    return value.length < 3 ? 'Minimo 3 letras' : null;
                  },
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  decoration: const InputDecoration(
                      hintText: 'Nombre de usuario',
                      labelText: 'Nombre',
                      helperText: 'Solo letras',
                      //counterText: '3 caracteres',
                      //prefixIcon: Icon(Icons.verified_user_outlined),
                      suffixIcon: Icon(Icons.group_add_outlined),
                      icon: Icon(Icons.assignment_ind_outlined),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(10),
                        topRight: Radius.circular(10),
                      ))))
            ]),
          ),
        ));
  }
}
