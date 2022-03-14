import 'package:flutter/material.dart';

class SearchProvider extends ChangeNotifier {
  Set order = {};
  Set img = {};
  chiqar(String v, List<dynamic> doc) {
    order.clear();
    order.clear();
    img.clear();
    for (var i = 0; i < doc.length; i++) {
      if ((doc[i]["name"] as String).toLowerCase().contains(v)) {
        order.add(doc[i]["name"]);
        img.add(doc[i]["img"]);
      }
    }
    if (v.isEmpty) {
      order.clear();
      order.clear();
      img.clear();
    }

    notifyListeners();
  }
}
