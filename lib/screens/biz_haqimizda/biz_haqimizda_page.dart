import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:uzesp/core/components/size_konfig.dart';
import 'package:uzesp/core/constants/const_color.dart';
import 'package:uzesp/core/constants/padding/padding_comp.dart';
import 'package:uzesp/services/service_link.dart';

class BizHaqimizdaPage extends StatelessWidget {
  const BizHaqimizdaPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ConstColor.siyohColor,
        leading: IconButton(
          onPressed: () {
            Navigator.pushNamed(context, "/home");
          },
          icon: Icon(Icons.arrow_back_ios_new_rounded,
              color: ConstColor.whiteColor),
        ),
        centerTitle: true,
        title: Text(
          "Biz haqimizda",
          style: TextStyle(
            fontFamily: "Book",
            color: ConstColor.whiteColor,
          ),
        ),
      ),
      body: FadeInUp(
        child: MyPadddings.pdSymetric(
          horizontal: wi(20),
          vertical: he(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Assalomu alaykum",
                style: TextStyle(
                  color: ConstColor.blackColor,
                  fontWeight: FontWeight.bold,
                  fontSize: he(22),
                ),
              ),
              MyPadddings.pdOnly(
                top: he(12),
                child: Text(
                  "O'zbekcha va Ispancha til o'rganish dasturiga xush kelibsiz, Sizga bu dasturning foydasi tegadi degan umiddamiz.",
                  style: TextStyle(
                    color: ConstColor.blackColor,
                    fontSize: he(14),
                  ),
                ),
              ),
              MyPadddings.pdSymetric(
                vertical: he(30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: he(180),
                      width: wi(163),
                      decoration: BoxDecoration(
                        color: ConstColor.whiteColor,
                        border: Border.all(
                          width: 0.4,
                          color: ConstColor.blackColor.withOpacity(0.6),
                        ),
                        borderRadius: const BorderRadius.all(
                          Radius.circular(25),
                        ),
                      ),
                      child: MyPadddings.pdAll(
                        all: 6,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            CircleAvatar(
                                backgroundColor: ConstColor.whiteColor,
                                radius: he(34),
                                backgroundImage: const AssetImage(
                                    "assets/img/Miraziz_makhmudjonov.jpg")),
                            Text(
                              "Miraziz Makhmudjonov",
                              style: TextStyle(
                                  color: ConstColor.blackColor,
                                  fontWeight: FontWeight.bold,
                                  fontSize: he(10)),
                            ),
                            Text(
                              "Flutter dasturchi",
                              style: TextStyle(
                                  color: ConstColor.blackColor.withOpacity(0.6),
                                  fontSize: he(10)),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                IconButton(
                                  onPressed: () {
                                    ServiceUrl.launchURL(
                                        "https://t.me/Aziziy_Blog");
                                  },
                                  icon: SvgPicture.asset("assets/img/Vector.svg",
                                      height: he(18),
                                      color: ConstColor.greenBold),
                                ),
                                IconButton(
                                  onPressed: () {
                                    ServiceUrl.launchURL(
                                        "https://github.com/Makhmudjonov");
                                  },
                                  icon: SvgPicture.asset("assets/img/git.svg",
                                      height: he(24),
                                      color: ConstColor.blackColor),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      height: he(180),
                      width: wi(163),
                      decoration: BoxDecoration(
                        border: Border.all(
                          width: 0.4,
                          color: ConstColor.blackColor.withOpacity(0.6),
                        ),
                        borderRadius: const BorderRadius.all(
                          Radius.circular(25),
                        ),
                      ),
                      child: MyPadddings.pdAll(
                        all: 6,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            CircleAvatar(
                                backgroundColor: ConstColor.whiteColor,
                                radius: he(34),
                                backgroundImage: const AssetImage(
                                    "assets/img/asadbek_abdumajidov.jpg")),
                            Text(
                              "Asadbek Abdumajidov",
                              style: TextStyle(
                                  color: ConstColor.blackColor,
                                  fontWeight: FontWeight.bold,
                                  fontSize: he(10)),
                            ),
                            Text(
                              "Flutter dasturchi",
                              style: TextStyle(
                                  color: ConstColor.blackColor.withOpacity(0.6),
                                  fontSize: he(10)),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                IconButton(
                                  onPressed: () {
                                    ServiceUrl.launchURL(
                                        "https://t.me/asadbek_blog1");
                                  },
                                  icon: SvgPicture.asset("assets/img/Vector.svg",
                                      height: he(18),
                                      color: ConstColor.greenBold),
                                ),
                                IconButton(
                                  onPressed: () {
                                    ServiceUrl.launchURL(
                                        "https://github.com/BekFlutterDev");
                                  },
                                  icon: SvgPicture.asset("assets/img/git.svg",
                                      height: he(24),
                                      color: ConstColor.blackColor),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: he(180),
                width: wi(163),
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 0.4,
                    color: ConstColor.blackColor.withOpacity(0.6),
                  ),
                  borderRadius: const BorderRadius.all(
                    Radius.circular(25),
                  ),
                ),
                child: MyPadddings.pdAll(
                  all: 6,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      CircleAvatar(
                          radius: he(34),
                          backgroundColor: ConstColor.whiteColor,
                          backgroundImage:
                              const AssetImage("assets/img/Tolibjon.jpg")),
                      Text(
                        "Toirov Abdullajon",
                        style: TextStyle(
                            color: ConstColor.blackColor,
                            fontWeight: FontWeight.bold,
                            fontSize: he(10)),
                      ),
                      Text(
                        "UI/UX Designer",
                        style: TextStyle(
                            color: ConstColor.blackColor.withOpacity(0.6),
                            fontSize: he(10)),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          IconButton(
                            onPressed: () {
                              ServiceUrl.launchURL("https://t.me/Otam03");
                            },
                            icon: SvgPicture.asset("assets/img/Vector.svg",
                                height: he(18), color: ConstColor.greenBold),
                          ),
                          IconButton(
                            onPressed: () {
                              ServiceUrl.launchURL("https://www.instagram.com/invites/contact/?i=vtkumsj4wkfk&utm_content=khqabw1");
                            },
                            icon: SvgPicture.asset("assets/img/insta_logo.svg",
                                height: he(22), color: ConstColor.redColor),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
