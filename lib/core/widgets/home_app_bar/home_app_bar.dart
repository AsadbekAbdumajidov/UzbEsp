import 'package:flutter/material.dart';

import '../../constants/const_color.dart';

class HomeAppBar {
  String title;
  Icon leftIcon;
  Icon rightIcon;
  Icon righ2tIcon;
  Function()? leftOntap;
  Function()? rightOntap;
  Function()? right2Ontap;

  HomeAppBar({
    required this.title,
    required this.rightIcon,
    required this.righ2tIcon,
    required this.leftIcon,
    this.leftOntap,
    this.rightOntap,
    this.right2Ontap,
  });
  getBar(context) {
    return AppBar(
      elevation: 1,
      centerTitle: true,
      automaticallyImplyLeading: false,
      backgroundColor: ConstColor.siyohColor,
      title: Text(title,
          style: TextStyle(fontFamily: "Book", color: ConstColor.whiteColor)),
      leading: IconButton(
        splashRadius: 20,
        icon: leftIcon,
        onPressed: leftOntap,
      ),
      actions: [
        IconButton(
          splashRadius: 20,
          icon: rightIcon,
          onPressed: rightOntap,
        ),
        IconButton(
          splashRadius: 20,
          icon: righ2tIcon,
          onPressed: right2Ontap,
        ),
      ],
    );
  }
}
