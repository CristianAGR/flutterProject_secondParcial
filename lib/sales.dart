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
                  const InputField(text: "IdProduct", type: "number",),
                  const InputField(text: "name"),
                  const InputField(text: "cant", type: "number"),
                  const InputField(text: "Idv", type: "number",),
                  const InputField(text: "Idc", type: "number",),
                  const InputField(text: "Pieces", type: "number",),
                  const InputField(text: "Subtotal", type: "number"),
                  const InputField(text: "Total", type: "number"),
                  ElevatedButton(onPressed: () => validation(context, '', _formKey), child: const Text("Venta"))
                ],
              ),
            ),
            ],

          ),
        ));
  }
}
