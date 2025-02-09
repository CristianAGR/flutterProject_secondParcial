import 'package:flutter/material.dart';

import './widgets/inputField.dart';
import 'helpers/formValidation.dart';

class ProductScreen extends StatelessWidget {
  ProductScreen({Key? key}) : super(key: key);

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Products"),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: ListView(
          children: [Form(
            key: _formKey,
            child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              InputField(text: "ID", type: "number",),
              InputField(text: "Name"),
              InputField(text: "Descrption"),
              InputField(text: "Units", type: "number",),
              InputField(text: "Cost", type: "number",),
              InputField(text: "Price", type: "number",),
              InputField(text: "Utility"),
              ElevatedButton(onPressed: () => validation(context, '', _formKey), child: const Text("Alta"))
            ]),
          ),]
        ),
      ),
    );
  }
}
