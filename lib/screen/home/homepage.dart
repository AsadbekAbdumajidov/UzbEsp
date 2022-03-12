import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:uzesp/base/bolim.dart';
import 'package:uzesp/core/constants/const_color.dart';
import 'package:uzesp/core/widgets/home_app_bar/home_app_bar.dart';
import 'package:uzesp/screen/search/search.dart';

import '../../core/components/drawer.dart';
import '../../core/components/size_konfig.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      drawer: const DrawerComp(),
      appBar: HomeAppBar(
        title: "Saralanganlar",
        leftIcon: const Icon(Icons.arrow_back),
        rightIcon: const Icon(Icons.arrow_back),
        righ2tIcon: const Icon(Icons.search),
      ).getBar(context),
      body: ListView.builder(
        padding: EdgeInsets.symmetric(vertical: he(10)),
        physics: const BouncingScrollPhysics(),
        itemBuilder: ((context, index) {
          return Container(
            margin: EdgeInsets.symmetric(horizontal: wi(20), vertical: he(15)),
            height: he(80),
            width: wi(343),
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 2,
                  blurRadius: 7,
                  offset: const Offset(0, 5),
                ),
              ],
              color: ConstColor.whiteColor,
              borderRadius: BorderRadius.circular(15),
            ),
          );
        }),
        itemCount: bolimlar.length,
      ),
    );
  }
}
