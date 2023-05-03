import 'package:flutter/material.dart';

class Fithscreen extends StatelessWidget {
  final String data;
  const Fithscreen({super.key, required this.data});

  @override 
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("layar Kelima"),
        backgroundColor: Colors.greenAccent,
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(data),
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