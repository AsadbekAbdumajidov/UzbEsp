import 'package:flutter/material.dart';
import 'package:flutter_exit_app/flutter_exit_app.dart';
import 'package:uzesp/core/constants/const_color.dart';

class ServiceSnackBar {
  static showMyDialog(context) {
    return showDialog(
        barrierDismissible: false, // ekranni chetiga bosilganda ochiradi.
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text(
              "Ispancha so'zlashgich",
              style:
                  TextStyle(color: ConstColor.blackColor, fontFamily: "book"),
            ),
            content: Text("Ilovadan chiqishni hohlaysizmi ?",
                style: TextStyle(
                    color: ConstColor.blackColor, fontFamily: "balo")),
            backgroundColor: ConstColor.whiteColor,
            actions: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ElevatedButton(
                    style: OutlinedButton.styleFrom(
                      fixedSize: const Size(100, 35),
                      backgroundColor: ConstColor.redColor,
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                    ),
                    child: Text(
                      "Yo'q",
                      style: TextStyle(color: ConstColor.whiteColor),
                    ),
                    onPressed: () {
                      Navigator.pop(
                          context); // Buttonga bosilganda orqaga qaytadi
                    },
                  ),
                  ElevatedButton(
                    style: OutlinedButton.styleFrom(
                      fixedSize: const Size(100, 35),
                      backgroundColor: ConstColor.siyohColor,
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                    ),
                    child: Text(
                      "Ha",
                      style: TextStyle(color: ConstColor.whiteColor),
                    ),
                    onPressed: () {
                      FlutterExitApp.exitApp();
                    },
                  ),
                ],
              )
            ],
          );
        });
  }
}
