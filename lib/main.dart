import 'package:buzivis_app/pages/Principal_Page.dart';
import 'package:buzivis_app/pages/buscar_linha.dart';
import 'package:buzivis_app/pages/menu_aberto.dart';
import 'package:buzivis_app/pages/selected_bus1.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Procurar(),
    );
  }
}