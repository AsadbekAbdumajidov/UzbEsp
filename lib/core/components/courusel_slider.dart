import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:uzesp/base/ispaniya_tarixi_data.dart';
import 'package:uzesp/core/components/size_konfig.dart';

class CaruselSliderComp extends StatelessWidget {
  const CaruselSliderComp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: he(160),
      width: MediaQuery.of(context).size.width,
      child: CarouselSlider.builder(
        itemCount: 9,
        itemBuilder: (_, __, pagev) {
          return Container(
            height: he(160),
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(
                Radius.circular(10),
              ),
              image: DecorationImage(
                  image: AssetImage(DataIspaniyaTarixi.img[__]),
                  fit: BoxFit.cover),
            ),
          );
        },
        options: CarouselOptions(
          autoPlay: true,
          height: MediaQuery.of(context).size.height * 0.18,
          enlargeCenterPage: true,
          autoPlayCurve: Curves.linear,
          autoPlayInterval: const Duration(seconds: 5),
        ),
      ),
    );
  }
}
