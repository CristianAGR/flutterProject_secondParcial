import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_segundo/product.dart';
import 'package:flutter_segundo/purchase.dart';
import 'package:flutter_segundo/sales.dart';
import 'package:flutter_segundo/user.dart';
import './widgets/inputField.dart';

class ScreenMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Menu')),
      body: Padding(
        padding: const EdgeInsets.all(50.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  minimumSize: const Size(double.infinity, 40)),
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return SimpleDialog(
                      title: Text("Selecciona una opción"),
                      children: <Widget>[
                        ElevatedButton(
                          child: Text("User"),
                          onPressed: () {
                            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const UserScreen()),
            );
                          },
                        ),
                        ElevatedButton(
                          child: Text("Product"),
                          onPressed: () {
                            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const ProductScreen()),
            );
                          },
                        ),
                      ],
                    );
                  },
                );
              },
              child: Text("Register"),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  minimumSize: const Size(double.infinity, 40)),
              onPressed: () {
                Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => SalesScreen()),
            );
              },
              child: const Text('Sales'),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  minimumSize: const Size(double.infinity, 40)),
              onPressed: () {
                Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => PurchaseScreen()),
            );
              },
              child: const Text('Purchase'),
            ),
          ],
        ),
      ),
    );
  }
}
