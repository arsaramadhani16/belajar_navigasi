import 'dart:html';

import 'package:belajar_navigasi/secondscreen.dart';
import 'package:belajar_navigasi/thirdscreen.dart';
import 'package:flutter/material.dart';

class Firstscreen extends StatelessWidget {
  const Firstscreen({super.key});

  Future<void> _navigatescreen(BuildContext context) async {
    final result = await Navigator.push(
      context, MaterialPageRoute(builder: (context) => ThirdScreen()));

    ScaffoldMessenger.of(context)
      ..removeCurrentSnackBar()
      ..showSnackBar(SnackBar(content: Text('$result')));
  }

  @override 
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("layar Pertama"),
        backgroundColor: Colors.red,
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ElevatedButton(
          onPressed: () {
            Navigator.push(context,
              MaterialPageRoute(
                builder: (context) => Secondscreen(data: 'Hello From First Screen ')
              )
            );
          },
          child: Text("Menuju Ke Layar Kedua")
        ),
        SizedBox(
          height: 15,
        ),
        ElevatedButton(
          onPressed: (){
            _navigatescreen(context);
          },
          child: Text("Menuju Layar Ketiga")),
          SizedBox(
            height: 15,
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/fourth');
            },
            child: Text('Menuju Layar Keempat')),
          SizedBox(
            height: 15,
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/fith', arguments: 'hai apa kabar');
            },
            child: Text('Menuju Layar Kelima'))
         ],
        ),
      ),
    );
  }
}