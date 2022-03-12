import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:uzesp/core/components/size_konfig.dart';
import 'package:uzesp/core/constants/padding/padding_comp.dart';

import '../../core/constants/const_color.dart';

class WelcomePage3 extends StatelessWidget {
  const WelcomePage3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FadeInLeft(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: IconButton(
              onPressed: () {
                Navigator.pushNamed(context, "/w2");
              },
              icon: Icon(
                Icons.arrow_back,
                color: ConstColor.blackColor,
              )),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pushNamed(context, "/home");
              },
              child: Text(
                "O'tkazib yuborish   ",
                style: TextStyle(color: ConstColor.blackColor.withOpacity(0.6)),
              ),
            ),
          ],
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            MyPadddings.pdSymetric(
              vertical: he(20),
              horizontal: wi(15),
              child: Column(
                children: [
                  Image.asset(
                    "assets/img/w3.png",
                    height: he(220),
                  ),
                  MyPadddings.pdOnly(
                    top: he(40),
                    bottom: he(14),
                    child: Text(
                      "Turizmda ko'p ishlatiladigan \n                  gaplar",
                      style: TextStyle(
                          color: ConstColor.blackColor,
                          fontWeight: FontWeight.bold,
                          fontSize: he(19)),
                    ),
                  ),
                  Text(
                    "O'zbekiston fuqarolariga ispan tilida boshlang'ich\n   malumotlarga ega bolishda muhim o'rin tutadi",
                    style: TextStyle(
                        color: ConstColor.blackColor.withOpacity(0.6)),
                  ),
                  Column(
                    children: [
                      MyPadddings.pdOnly(
                        top: he(50),
                        bottom: he(20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.fiber_manual_record_outlined,
                                color: ConstColor.siyohColor),
                            
                            Icon(Icons.fiber_manual_record_outlined,
                                color: ConstColor.siyohColor),FadeInUp(
                                child: Icon(Icons.fiber_manual_record,
                                    color: ConstColor.siyohColor)),
                          ],
                        ),
                      ),
                      CircleAvatar(
                        radius: he(40),
                        backgroundColor: ConstColor.siyohColor,
                        child: Center(
                          child: IconButton(
                            onPressed: () {Navigator.pushNamed(context, "/home");},
                            icon: Icon(
                              Icons.arrow_forward_ios_outlined,
                              color: ConstColor.whiteColor,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
