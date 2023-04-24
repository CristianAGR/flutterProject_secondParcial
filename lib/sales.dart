import 'package:flutter/material.dart';
import 'package:flutter_segundo/helpers/formValidation.dart';
import './widgets/inputField.dart';

class SalesScreen extends StatelessWidget {
  SalesScreen({Key? key}) : super(key: key);

  final _formKey = GlobalKey<FormState>();

  void _addSale(String item) {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Sales"),
        ),
        body: Center(
          child: ListView(
            children: [
            Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const InputField(text: "IdProduct"),
                  const InputField(text: "name"),
                  const InputField(text: "cant"),
                  const InputField(text: "Idv"),
                  const InputField(text: "Idc"),
                  const InputField(text: "Pieces"),
                  const InputField(text: "Subtotal"),
                  const InputField(text: "Total"),
                  ElevatedButton(onPressed: () => validation(context, '', _formKey), child: const Text("Venta"))
                ],
              ),
            ),
            ],

          ),
        ));
  }
}
