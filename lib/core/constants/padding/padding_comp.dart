import 'package:flutter/cupertino.dart';
import 'package:uzesp/core/components/size_konfig.dart';

class MyPadddings {
// ! PADDING ONLY

  static Padding pdOnly({
    required child,
    double right = 0,
    double left = 0,
    double top = 0,
    double bottom = 0,
  }) =>
      Padding(
        padding: EdgeInsets.only(
          top: he(top),
          bottom: he(bottom),
          left: wi(left),
          right: wi(right),
        ),
        child: child,
      );

//! PADDING SYMETRIC

  static Padding pdSymetric({
    required child,
    double horizontal = 0,
    double vertical = 0,
  }) =>
      Padding(
        padding: EdgeInsets.symmetric(
            vertical: he(vertical), horizontal: wi(horizontal),),
        child: child,
      );

//! PADDING ALL

  static Padding pdAll({
    required child,
    double all = 0,
  }) =>
      Padding(
        padding: EdgeInsets.all(wi(all)),
        child: child,
      );
}
