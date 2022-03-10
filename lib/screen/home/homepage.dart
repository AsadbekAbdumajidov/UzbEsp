import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:uzesp/base/bolim.dart';
import 'package:uzesp/core/constants/const_color.dart';
import 'package:uzesp/provider/them_provider.dart';
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
    var textColor = context.watch<DarkVsLightProvider>().textColor;
    return Scaffold(
      drawer: const DrawerComp(),
      appBar: AppBar(
        backgroundColor: ConstColor.siyohColor,
        title: const Text(
          "So'zlashgich",
          style: TextStyle(fontFamily: "book"),
        ),
        centerTitle: true,
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.share)),
          IconButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => SerarchPage()));
              },
              icon: const Icon(Icons.search))
        ],
      ),
      body: ListView.builder(
        physics: const BouncingScrollPhysics(),
        itemBuilder: ((context, index) {
          return Container(
            margin: EdgeInsets.symmetric(horizontal: wi(20), vertical: he(10)),
            height: he(80),
            decoration: BoxDecoration(
              border: Border.all(width: 0.3, color: textColor),
              borderRadius: BorderRadius.circular(15),
            ),
            child: Row(
              children: [
                Container(
                  height: he(80),
                  width: wi(100),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: ConstColor.siyohColor.withOpacity(0.4),
                    border: Border.all(width: 0.3, color: textColor),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(12),
                    child: Image(
                      height: he(10),
                      image: AssetImage("assets/png/${index + 1}.png"),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: wi(15)),
                  child: Text(
                    "${bolimlar[index]["name"]}",
                    style: TextStyle(
                        fontSize: he(20),
                        fontWeight: FontWeight.bold,
                        fontFamily: "balo",
                        color: textColor),
                  ),
                ),
              ],
            ),
          );
        }),
        itemCount: bolimlar.length,
      ),
    );
  }
}
