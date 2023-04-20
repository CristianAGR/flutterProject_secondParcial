import 'package:flutter/material.dart';

import './widgets/inputField.dart';

class PurchaseScreen extends StatelessWidget {
  const PurchaseScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Purchase"),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start,
         children: [
          InputField(text: "IdProduct"),
          InputField(text: "Name"),
          InputField(text: "Pieces"),
          InputField(text: "IDA"),
        ]),
      ),
    );
  }
}
