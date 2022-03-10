import 'package:animate_do/animate_do.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:uzesp/core/components/size_konfig.dart';
import 'package:uzesp/core/constants/const_color.dart';

import '../../provider/them_provider.dart';

class DrawerComp extends StatelessWidget {
  const DrawerComp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    var textColor = context.watch<DarkVsLightProvider>().textColor;
    return SlideInLeft(
      child: Stack(
        children: [
          Drawer(
            backgroundColor: ConstColor.siyohColor.withOpacity(0.4),
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(15),
                  bottomRight: Radius.circular(15)),
            ),
            child: Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                color: Colors.transparent,
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(40),
                    bottomRight: Radius.circular(40)),
              ),
              child: Column(
                children: [
                  Container(
                    height: he(200),
                    decoration: BoxDecoration(
                      color: ConstColor.siyohColor,
                      borderRadius: const BorderRadius.only(
                        topRight: Radius.circular(40),
                      ),
                    ),
                  ),
                  Card(
                    color: ConstColor.siyohColor,
                    child: ListTile(
                      leading: Container(
                        height: he(50),
                        width: wi(50),
                        decoration: BoxDecoration(
                            color: ConstColor.siyohColor,
                            borderRadius:
                                const BorderRadius.all(Radius.circular(10))),
                        child:const Center(
                          child: Icon(Icons.nightlight_outlined,
                              color: Colors.white),
                        ),
                      ),
                      title:const Text(
                        "Dark Mode",
                        style:
                            TextStyle(color: Colors.white, fontFamily: "poppins"),
                      ),
                      trailing: CupertinoSwitch(
                        value: context.watch<DarkVsLightProvider>().svichBool,
                        onChanged: (v) {
                          context.read<DarkVsLightProvider>().colorRef();
                        },
                         thumbColor: Colors.white,
                      activeColor: ConstColor.greenBold,
                      trackColor: ConstColor.greeyColor,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
