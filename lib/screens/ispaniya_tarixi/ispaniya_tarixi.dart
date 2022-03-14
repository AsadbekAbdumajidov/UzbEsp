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
      body: MyPadddings.pdSymetric(
        horizontal: wi(20),
        child: SingleChildScrollView(
          padding:  EdgeInsets.symmetric(vertical: he(10)),
          physics: const BouncingScrollPhysics(),
          child: Text(
            "Ispaniya hududida odam quyi paleolit davridan yashaydi. Leridadan Kadisgacha boʻlgan hududlarda mezolitga oid qoyatosh suratlari koʻp topilgan. Mil. av. 7-asrdan I.ning janubiy va sharqiy sohil boʻylari finikiyaliklar va yunonlar tomonidan oʻzlashtira boshlangan. Mil. av. 700—500 yillarda Oʻrta dengiz sohilida iberlar madaniyati paydo boʻldi. Mil. av. 5—3-asrlarda Pireney yarim orol orkali kelgan kelpiarnmt iberlar bilan qoʻshilib ketishi natijasida kelipiberlar shakllangan. Mil. av. 3-asr oxirlarida Ispaniya hududining koʻp qismi Karfagen qoʻl ostiga oʻtdi. Mil. av. 2-asr boshiga kelib rimliklar karfagenliklarni siqib chiqardi. Mil. av. 197 yilda Rim Ispaniya hududini 2 viloyat (Yaqin Ispaniya va Olis Ispaniya)ga boʻlib yubordi. Mil. 409 yil Ispaniyaga alanlar, svev va vandallar, 418 yildan vestgotlar kirib kela boshladi. 711—718 yillarda Pireney yarim orolning deyarli hammasini arablar bosib olib, 756 yil mustaqil davlat — Kordova amirligini, 929 yilda esa Kordova xalifaligini tuzdi. Kordovada sugʻoriladigan dehqonchilik paydo boʻldi, hunarmandchilik, savdosotiq, fan va madaniyat yuksaldi. 1031 yil xalifalik bir necha amirlikka boʻlindi. 8-asrdan boshlab mavrlar koʻl ostida boʻlgan yerlarni ispanlar kay-tarib ola boshladilar (Rekonkista dav-ri). Rekonkista davrida Kastiliya va Aragon qirolliklari vujudga keldi (11-asr). 12-asrda dvoryanlar, ruhoniylar, shaharliklar va yuqori tabaqa dehqonlardan iborat korteslar paydo boʻldi. Ular qirol hokimiyatini cheklab turdilar.",
            style: TextStyle(
              fontSize: he(16),
              fontFamily: "balo"
            ),
          ),
        ),
      ),
    );
  }
}
