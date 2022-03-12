import 'package:flutter/material.dart';
import 'package:uzesp/core/constants/const_color.dart';

import '../../components/size_konfig.dart';

class CircleAvataWidget {
  Icon centrIcon;
  Color circleColor;
  Function()? iconOnTap;
  double? radius;
  CircleAvataWidget({
    Key? key,
    required this.centrIcon,
    required this.circleColor,
    this.radius,
    this.iconOnTap,
  });

  getCircle(context) {
    return CircleAvatar(
      radius: he(radius!),
      backgroundColor:circleColor,
      child: Center(
        child: IconButton(
          onPressed: iconOnTap,
          icon: centrIcon
        ),
      ),
    );
  }
}
