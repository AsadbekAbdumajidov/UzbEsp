import 'package:flutter/material.dart';
import 'package:uzesp/screen/home/homepage.dart';

class RouteGenerate {
  Route? generate(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(
          builder: (context) => const MyHomePage(),
        );
     
    }
    return null;
  }
}
