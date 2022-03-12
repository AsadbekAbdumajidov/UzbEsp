import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:uzesp/core/components/size_konfig.dart';
import 'package:uzesp/core/constants/const_color.dart';
import 'package:uzesp/core/constants/padding/padding_comp.dart';

class DrawerComp extends StatelessWidget {
  const DrawerComp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return SlideInLeft(
      child: Stack(
        children: [
          Drawer(
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(20),
                  bottomRight: Radius.circular(20)),
            ),
            child: Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(20),
                    bottomRight: Radius.circular(20)),
              ),
              child: Column(
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height * 0.25,
                    decoration: BoxDecoration(
                      color: ConstColor.whiteColor,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 2,
                          blurRadius: 7,
                          offset: const Offset(0, 5),
                        ),
                      ],
                      borderRadius: const BorderRadius.only(
                        topRight: Radius.circular(40),
                      ),
                    ),
                    child: MyPadddings.pdAll(
                      all: 20,
                      child: Image.asset("assets/img/splesh_foto.png"),
                    ),
                  ),
                  Card(
                    color: ConstColor.whiteColor,
                    elevation: 10,
                    child: ListTile(
                      onTap: () {
                        Navigator.pushNamed(context, "/fav");
                      },
                      leading: Icon(Icons.favorite_border,
                          color: ConstColor.blackColor, size: 27),
                      title: Text(
                        "Saqlanganlar",
                        style: TextStyle(
                            color: ConstColor.blackColor, fontSize: 16),
                      ),
                    ),
                  ),
                  Card(
                    color: ConstColor.whiteColor,
                    elevation: 10,
                    child: ListTile(
                      onTap: () {Navigator.pushNamed(context, "/tarix");},
                      leading: Icon(Icons.history,
                          color: ConstColor.blackColor, size: 27),
                      title: Text(
                        "Ispaniya tarixi",
                        style: TextStyle(
                            color: ConstColor.blackColor, fontSize: 16),
                      ),
                    ),
                  ),
                  Card(
                    color: ConstColor.whiteColor,
                    elevation: 10,
                    child: ListTile(
                      onTap: () {Navigator.pushNamed(context, "/about");},
                      leading: Icon(Icons.warning_amber_outlined,
                          color: ConstColor.blackColor, size: 27),
                      title: Text(
                        "Biz haqimizda",
                        style: TextStyle(
                            color: ConstColor.blackColor, fontSize: 16),
                      ),
                    ),
                  ),
                  Card(
                    color: ConstColor.whiteColor,
                    elevation: 10,
                    child: ListTile(
                      onTap: () {},
                      leading: Icon(Icons.output_sharp,
                          color: ConstColor.blackColor, size: 27),
                      title: Text(
                        "Chiqish",
                        style: TextStyle(
                            color: ConstColor.blackColor, fontSize: 16),
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
