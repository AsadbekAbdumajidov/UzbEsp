import 'package:flutter_share/flutter_share.dart';

class Serviceshare {
  static Future<void> share() async {
    await FlutterShare.share(
        title: "Ispnacha so'zlashgich",
        linkUrl: 'https://flutter.dev/',
        chooserTitle: "Ispnacha so'zlashgich");
  }
}
