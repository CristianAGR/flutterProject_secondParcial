import 'package:flutter/material.dart';
import './widgets/inputField.dart';

class SalesScreen extends StatelessWidget {
  const SalesScreen({Key? key}) : super(key: key);

  void _addSale(String item) {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Sales"),
        ),
        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              InputField(text: "IdProduct"),
              InputField(text: "name"),
              InputField(text: "cant"),
              InputField(text: "Idv"),
              InputField(text: "Idc"),
              InputField(text: "Pieces"),
              InputField(text: "Subtotal"),
              InputField(text: "Total"),
              ElevatedButton(onPressed: () {}, child: const Text("Venta"))
            ],
          ),
        ));
  }
}
