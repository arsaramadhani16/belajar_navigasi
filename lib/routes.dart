import 'package:belajar_navigasi/fithscreen.dart';
import 'package:belajar_navigasi/fourthscreen.dart';
import 'package:flutter/material.dart';

class RouteGenerator{
  static Route<dynamic> generateRoute(RouteSettings settings){
    final args = settings.arguments;
    switch (settings.name) {
      case '/fourth':
       return MaterialPageRoute(builder: (_) => Fourthscreen());
      case '/fith':
       if(args is String){
        return MaterialPageRoute(builder: (_) => Fithscreen(data: args));
       }
       return _errorRoute();
      default:
       return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute(){
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        appBar: AppBar(title: Text("Error")),
        body: Center(child: Text("Error Page")),
      );
    });
  }
}