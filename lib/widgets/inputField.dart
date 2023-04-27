// ignore_for_file: file_names

import 'package:flutter/material.dart';

class InputField extends StatelessWidget {
  const InputField({super.key, required this.text, this.type});

  final text;
  final type;
  
  @override
  Widget build(BuildContext context) {
    var isObscure = false;
    TextInputType inputType = TextInputType.text;
    // verifies the type of keybord which will be displayes
      if ( type == "pass"){
         isObscure = true;
         inputType = TextInputType.visiblePassword;
      }
      if (type == "email") {
        inputType = TextInputType.emailAddress;
      }
      if (type == "date") {
        inputType = TextInputType.datetime;
      }
      if (type == "number") {
        inputType = TextInputType.number;
      }
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextFormField(
            obscureText: isObscure,
            keyboardType: inputType,
            decoration: InputDecoration(
              border: const OutlineInputBorder(),
              labelText: text + ":",
            ),
            // validates if the value is null or empty
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter some text';
              }
              return null;
            },
          ),
          const SizedBox(height: 16),
        ],
      ),
    );
  }
  
    List<dynamic> newType() {
    var isObscure = false;
    TextInputType inputType = TextInputType.text;
          if ( type == "pass"){
         isObscure = true;
         inputType = TextInputType.visiblePassword;
      }
      if (type == "email") {
        inputType = TextInputType.emailAddress;
      }
      if (type == "date") {
        inputType = TextInputType.datetime;
      }
      if (type == "number") {
        inputType = TextInputType.number;
      }
      return [isObscure, inputType];
      //return inputType;
  }
  
}