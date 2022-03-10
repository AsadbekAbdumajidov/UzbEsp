import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:uzesp/provider/them_provider.dart';
import 'package:uzesp/routes/router.dart';

void main() async {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (_) => DarkVsLightProvider()),
    ],
    child: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);
  final RouteGenerate _forRoute = RouteGenerate();

  @override
  Widget build(BuildContext context) {
    var themeColor = context.watch<DarkVsLightProvider>().scaffoldColor;
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'UzEsp',
        theme: themeColor,
        initialRoute: '/',
        onGenerateRoute: _forRoute.generate);
  }
}
