import 'package:flutter/material.dart';
import 'package:uzesp/screen/home/homepage.dart';
import 'package:uzesp/screen/splesh%20screen/splesh_page.dart';
import 'package:uzesp/screen/splesh%20screen/welcome_1.dart';

class RouteGenerate {
  Route? generate(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(
          builder: (context) => const SpleshPage(),
        );case '/w1':
        return MaterialPageRoute(
          builder: (context) => const WelcomePage1(),
        );
      case '/home':
        return MaterialPageRoute(
          builder: (context) => const MyHomePage(),
        );
    }
    return null;
  }
}
