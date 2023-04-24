import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_segundo/helpers/formValidation.dart';
import 'package:flutter_segundo/register.dart';
import 'package:flutter_segundo/screen_menu.dart';
import './widgets/inputField.dart';
//IMPORTAR LA PANTALLA DEL REGISTRO

class ScreenLogin extends StatelessWidget {

  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Login')),
      body: Padding(
        padding: const EdgeInsets.all(50.0),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const InputField(text: "Username"),
              const InputField(text: "Password"),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    minimumSize: const Size(double.infinity, 40)),
                onPressed: () => validation(context, 'menu', _formKey),
                // onPressed: () {
                //   Navigator.pushReplacement(
                //     context,
                //     MaterialPageRoute(builder: (context) => ScreenMenu()),
                //   );
                // },
                child: const Text('Login'),
              ),
              const SizedBox(height: 10),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    minimumSize: const Size(double.infinity, 40)),
                onPressed: () => validation(context, 'menu', _formKey),
                // onPressed: () {
                //   Navigator.push(
                //     context,
                //     MaterialPageRoute(
                //         builder: (context) =>
                //             Register()), //MANDAR A LA VENTANA DE REGISTRO
                //   );
                // },
                child: const Text('Register'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
