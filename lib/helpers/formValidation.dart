// ignore_for_file: file_names

import 'package:flutter/material.dart';

void validation(context, String route, GlobalKey<FormState> formKey) {
  if (formKey.currentState!.validate()) {
    if (route != "") {
      Navigator.pushNamed(context, route);
    }

    // If the form is valid, display a snackbar. In the real world,
    // you'd often call a server or save the information in a database.
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(content: Text('Processing Data')),
    );
  }
}
