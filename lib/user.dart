import 'package:flutter/material.dart';
import './widgets/inputField.dart';

class UserScreen extends StatelessWidget {
  const UserScreen({Key? key}) : super(key: key);

  void _addSale(String item) {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("User"),
        ),
        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              InputField(text: "Id"),
              InputField(text: "Name"),
              InputField(text: "Lastname"),
              InputField(text: "Age"),
              InputField(text: "Gender"),
              InputField(text: "Email/user"),
              InputField(text: "Password"),
              InputField(text: "Rol"),
              ElevatedButton(onPressed: () {}, child: const Text("Alta"))
            ],
          ),
        ));
  }
}
