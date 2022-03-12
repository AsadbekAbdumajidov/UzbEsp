import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:uzesp/base/ispaniya_tarixi_data.dart';
import 'package:uzesp/core/components/courusel_slider.dart';
import 'package:uzesp/core/components/size_konfig.dart';
import 'package:uzesp/core/constants/padding/padding_comp.dart';

import '../../core/constants/const_color.dart';
import '../../core/widgets/home_app_bar/home_app_bar.dart';

class IspaniyaTarixiPage extends StatelessWidget {
  const IspaniyaTarixiPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: HomeAppBar(
        title: "Ispancha tarixi",
        leftIcon: Icon(Icons.arrow_back_ios_new_rounded,
            color: ConstColor.whiteColor),
        rightIcon: Icon(Icons.share, color: ConstColor.whiteColor),
        righ2tIcon: Icon(Icons.search, color: ConstColor.whiteColor),
        leftOntap: () => Navigator.pushNamed(context, "/home"),
        right2Ontap: () => Navigator.pushNamed(context, "/search"),
      ).getBar(context),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const CaruselSliderComp(),
          SizedBox(
            height: he(440),
            child: ListView.builder(
              itemCount: DataIspaniyaTarixi.historyName.length,
                physics: const BouncingScrollPhysics(),
                itemBuilder: (_, __) {
                  return MyPadddings.pdSymetric(
                    horizontal: wi(20),
                    vertical: he(10),
                    child: Column(
                      children: [
                        SlideInLeft(
                          child: Card(
                            elevation: 5,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                                side: BorderSide.none),
                            child: ExpansionTile(
                              controlAffinity: ListTileControlAffinity.trailing,
                              title: Text(
                                DataIspaniyaTarixi.name[__].toString(),
                                style: TextStyle(
                                    color: ConstColor.blackColor,
                                    fontFamily: "balo",
                                    fontWeight: FontWeight.bold,
                                    fontSize: he(17)),
                              ),
                              children: [
                                ListTile(
                                  title: Padding(
                                    padding: const EdgeInsets.only(bottom: 10),
                                    child: Container(
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        border: Border.all(
                                          width: 0.5,
                                          color: const Color.fromRGBO(
                                              12, 114, 100, 1),
                                        ),
                                        borderRadius: const BorderRadius.all(
                                          Radius.circular(10),
                                        ),
                                        boxShadow: [
                                          BoxShadow(
                                            color: Colors.grey.withOpacity(0.5),
                                            spreadRadius: 2,
                                            blurRadius: 7,
                                            offset: const Offset(0, 5),
                                          ),
                                        ],
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 10, vertical: 5),
                                        child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              Text(
                                                DataIspaniyaTarixi
                                                    .historyName[__],
                                                style: const TextStyle(
                                                    color: Colors.black,
                                                    fontWeight: FontWeight.bold,
                                                    fontFamily: 'balo'),
                                              ),
                                              const Divider(
                                                color: Colors.black,
                                              ),
                                               Padding(
                                                padding:
                                                   const EdgeInsets.only(top: 10),
                                                child: Text(
                                                  DataIspaniyaTarixi.history[__],
                                                  style:const TextStyle(
                                                      color: Colors.black,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontFamily: 'balo'),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
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
                }),
          )
        ],
      ),
    );
  }
}
