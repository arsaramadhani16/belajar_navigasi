import 'package:flutter/material.dart';

class Secondscreen extends StatelessWidget {
  const Secondscreen({super.key});

  @override 
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("layar Pertama"),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text("Kembali")
        ),
      ),
    );
  }
}