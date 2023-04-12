import 'dart:html';

import 'package:belajar_navigasi/firstscreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override 
  Widget build(BuildContext context){
    return MaterialApp(
      home: Firstscreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}