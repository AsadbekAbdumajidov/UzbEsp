import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:uzesp/core/components/size_konfig.dart';
import 'package:uzesp/core/constants/padding/padding_comp.dart';
import '../../core/constants/const_color.dart';

class WelcomePage1 extends StatelessWidget {
  const WelcomePage1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FadeInLeft(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
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
                    "assets/img/w1.png",
                    height: he(220),
                  ),
                  MyPadddings.pdOnly(
                    top: he(40),
                    bottom: he(14),
                    child: Text(
                      "Uzbekcha va Ispancha \n        so'zlashgich",
                      style: TextStyle(
                          color: ConstColor.blackColor,
                          fontWeight: FontWeight.bold,
                          fontSize: he(19)),
                    ),
                  ),
                  Text(
                    "Ispan tilida ko'p ishlatiladigan gaplar va gapirganda\n              qiynalmaslik uchun dastur",
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
                            FadeInUp(
                                child: Icon(Icons.fiber_manual_record,
                                    color: ConstColor.siyohColor)),
                            Icon(Icons.fiber_manual_record_outlined,
                                color: ConstColor.siyohColor),
                            Icon(Icons.fiber_manual_record_outlined,
                                color: ConstColor.siyohColor)
                          ],
                        ),
                      ),
                      CircleAvatar(
                        radius: he(40),
                        backgroundColor: ConstColor.siyohColor,
                        child: Center(
                          child: IconButton(
                            onPressed: () {
                              Navigator.pushNamed(context, "/w2");
                            },
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
