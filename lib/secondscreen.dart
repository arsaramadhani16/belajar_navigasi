import 'package:flutter/material.dart';

class Secondscreen extends StatelessWidget {
  final String data;
  const Secondscreen({super.key, required this.data});

  @override 
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("layar Pertama"),
        backgroundColor: Colors.blue,
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