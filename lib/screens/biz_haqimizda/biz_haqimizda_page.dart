import 'package:flutter/material.dart';
import 'package:uzesp/core/constants/const_color.dart';

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
    );
  }
}
