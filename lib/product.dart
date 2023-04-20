import 'package:flutter/material.dart';

import './widgets/inputField.dart';

class ProductScreen extends StatelessWidget {
  const ProductScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Products"),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          InputField(text: "ID"),
          InputField(text: "Name"),
          InputField(text: "Descrption"),
          InputField(text: "Units"),
          InputField(text: "Cost"),
          InputField(text: "Price"),
          InputField(text: "Utility")
        ]),
      ),
    );
  }
}
