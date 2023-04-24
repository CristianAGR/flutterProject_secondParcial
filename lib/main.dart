import 'package:flutter/material.dart';
import 'package:flutter_segundo/product.dart';
import 'package:flutter_segundo/purchase.dart';
import 'package:flutter_segundo/register.dart';
import 'package:flutter_segundo/sales.dart';
import 'package:flutter_segundo/screen_login.dart';
import 'package:flutter_segundo/screen_menu.dart';
import 'package:flutter_segundo/user.dart';
import 'package:flutter_segundo/widgets/inputField.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: ScreenLogin(),
        ),
      ),
      routes: {
        'login': ( _ ) => ScreenLogin(),
        'sales': ( _ ) => SalesScreen(),
        'menu': ( _ ) => ScreenMenu(),
        'products': ( _ ) => ProductScreen(),
        'purchase': ( _ ) => PurchaseScreen(),
        'user': ( _ ) => UserScreen(),
      },
    );
  }
}
