import 'package:flutter/material.dart';
import 'package:flutter_segundo/helpers/formValidation.dart';
import './widgets/inputField.dart';

class UserScreen extends StatelessWidget {
  UserScreen({Key? key}) : super(key: key);
  final _formKey = GlobalKey<FormState>();
  void _addSale(String item) {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("User"),
        ),
        body: Center(
          child: ListView(
            children: [
              Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  InputField(text: "Id", type: "number",),
                  InputField(text: "Name"),
                  InputField(text: "Lastname"),
                  InputField(text: "Age", type: "number",),
                  InputField(text: "Gender"),
                  InputField(text: "Email/user", type: "email",),
                  InputField(text: "Password"),
                  InputField(text: "Rol"),
                  ElevatedButton(onPressed: () => validation(context, '', _formKey), child: const Text("Alta"))
                ],
              ),
            ),
            ],
          ),
        ));
  }
}
