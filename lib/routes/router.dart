import 'package:flutter/material.dart';
import 'package:uzesp/screens/saqlanganlar/saqlanganlar.dart';
import 'package:uzesp/screens/search/search.dart';

import '../screens/home/homepage.dart';
import '../screens/splesh screen/splesh_page.dart';
import '../screens/splesh screen/welcome_1.dart';
import '../screens/splesh screen/welcome_2.dart';
import '../screens/splesh screen/welcome_3.dart';

class RouteGenerate {
  Route? generate(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(
          builder: (context) => const SpleshPage(),
        );
      case '/w1':
        return MaterialPageRoute(
          builder: (context) => const WelcomePage1(),
        );
      case '/w2':
        return MaterialPageRoute(
          builder: (context) => const WelcomePage2(),
        );
      case '/w3':
        return MaterialPageRoute(
          builder: (context) => const WelcomePage3(),
        );
      case '/home':
        return MaterialPageRoute(
          builder: (context) => const MyHomePage(),
        );
      case '/search':
        return MaterialPageRoute(
          builder: (context) => const SearchPage(),
        );
         case '/fav':
        return MaterialPageRoute(
          builder: (context) => const SaqlanganlarPage(),
        );
    }
    return null;
  }
}
