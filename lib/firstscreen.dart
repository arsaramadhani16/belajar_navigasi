import 'dart:html';

import 'package:belajar_navigasi/secondscreen.dart';
import 'package:flutter/material.dart';

class Firstscreen extends StatelessWidget {
  const Firstscreen({super.key});

  @override 
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("layar Pertama"),
        backgroundColor: Colors.red,
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => Secondscreen()
              )
            );
          },
          child: Text("Menuju Ke Layar Kedua")
        ),
      ),
    );
  }
}