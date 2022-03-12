import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:uzesp/core/components/size_konfig.dart';
import 'package:uzesp/core/constants/const_color.dart';
import 'package:uzesp/core/constants/padding/padding_comp.dart';

class SpleshPage extends StatelessWidget {
  const SpleshPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    Future.delayed(const Duration(seconds:3), () {
      Navigator.pushNamedAndRemoveUntil(context, '/w1', (route) => false);
    });
    return Scaffold(
      
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          FadeInUp(
            child: MyPadddings.pdOnly(
              bottom: wi(60),
              child: Image.asset(
                "assets/img/splesh_foto.png",
                height: he(131),
              ),
            ),
          )
        ],
      ),
    );
  }
}
