import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:uzesp/base/bolim.dart';
import 'package:uzesp/core/components/drawer.dart';
import 'package:uzesp/core/constants/const_color.dart';
import 'package:uzesp/core/constants/padding/padding_comp.dart';
import 'package:uzesp/core/widgets/home_app_bar/home_app_bar.dart';
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
    final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
    return Scaffold(
      drawer: const DrawerComp(),
      key: _scaffoldKey,
      appBar: HomeAppBar(
        title: "Ispancha so'zlashuv",
        leftIcon: Icon(Icons.menu, color: ConstColor.whiteColor),
        rightIcon: Icon(Icons.share, color: ConstColor.whiteColor),
        righ2tIcon: Icon(Icons.search, color: ConstColor.whiteColor),
        leftOntap: () => _scaffoldKey.currentState!.openDrawer(),
        right2Ontap: () => Navigator.pushNamed(context, "/search"),
      ).getBar(context),
      body: ListView.builder(
        padding: EdgeInsets.symmetric(vertical: he(10)),
        physics: const BouncingScrollPhysics(),
        itemBuilder: ((_, __) {
          return FadeInUp(
            child: InkWell(
              onTap: ()=> Navigator.popAndPushNamed(context, "/next",arguments: __),
              child: Container(
                margin:
                    EdgeInsets.symmetric(horizontal: wi(20), vertical: he(10)),
                height: he(75),
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
                child: MyPadddings.pdSymetric(
                  horizontal: wi(11),
                  child: Row(
                    children: [
                      Container(
                        height: he(54),
                        width: he(54),
                        decoration: BoxDecoration(
                            borderRadius:
                                const BorderRadius.all(Radius.circular(5)),
                            color: ConstColor.siyohColor.withOpacity(0.3),
                            image: DecorationImage(
                              image: AssetImage(bolimlar[__]["img"]),
                            )),
                      ),
                      MyPadddings.pdOnly(
                        left: wi(20),
                        child: Text(
                          bolimlar[__]["name"],
                          maxLines: 1,
                          style: TextStyle(
                              fontFamily: "balo",
                              fontSize: he(18),
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        }),
        itemCount: bolimlar.length,
      ),
    );
  }
}
