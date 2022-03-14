import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:uzesp/provider/search_provider.dart';
import 'package:uzesp/routes/router.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:timezone/data/latest.dart' as tz;

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  tz.initializeTimeZones();
  await Hive.openBox("myBoolean");
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (_) => SearchProvider()),
    ],
    child: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);
  final RouteGenerate _forRoute = RouteGenerate();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'UzEsp',
        initialRoute: '/',
        onGenerateRoute: _forRoute.generate);
  }
}
