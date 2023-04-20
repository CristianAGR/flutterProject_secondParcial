import 'package:flutter/material.dart';

class InputField extends StatelessWidget {
  const InputField({super.key, required this.text});

  final text;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextField(
            obscureText: true,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: text + ":",
            ),
          ),
        ],
      ),
    );
  }
}
