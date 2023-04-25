import 'package:flutter/material.dart';

import './widgets/inputField.dart';
import 'helpers/formValidation.dart';

class PurchaseScreen extends StatelessWidget {
  PurchaseScreen({Key? key}) : super(key: key);

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Purchase"),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: ListView(
          children: [Form(
            key: _formKey,
            child: Column(crossAxisAlignment: CrossAxisAlignment.start,
             children: [
              InputField(text: "IdProduct"),
              InputField(text: "Name"),
              InputField(text: "Pieces"),
              InputField(text: "IDA"),
              ElevatedButton(onPressed: () => validation(context, '', _formKey), child: const Text("Venta"))
            ]),
          ),]
        ),
      ),
    );
  }
}
