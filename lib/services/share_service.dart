import 'package:flutter_share/flutter_share.dart';

class Serviceshare {
  static Future<void> share() async {
    await FlutterShare.share(
        title: "Ispnacha so'zlashgich",
        linkUrl: 'https://t.me/asadbek_blog1',
        chooserTitle: "Ispnacha so'zlashgich");
  }
}
