import 'package:flutter/material.dart';

class Fourthscreen extends StatelessWidget {
  const Fourthscreen({super.key});

  @override 
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("layar Keempat"),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text("Kembali"))
          ],
        ),
      ),
    );
  }
}