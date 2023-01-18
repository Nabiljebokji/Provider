import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider1/checkOutCart.dart';
import 'package:provider1/home.dart';
import 'package:provider1/provider/cart.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => cart(),
      builder: (context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          debugShowMaterialGrid: false,
          title: 'Flutter Demo',
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          routes: {
            "checkOutCart": (context) => checkOutCart(),
          },
          home: home(),
        );
      },
    );
  }
}
