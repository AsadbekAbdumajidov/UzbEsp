import 'package:flutter/material.dart';

class SearchProvider extends ChangeNotifier {
  Set order = {};
  chiqar(String v, List<dynamic> doc) {
    order.clear();
    for (var i = 0; i < doc.length; i++) {
      if (v.isEmpty) {
        order.clear();
      } else if ((doc[i]["name"] as String).toLowerCase().contains(v)) {
        order.add(doc[i]["name"]);
      }
    }

    notifyListeners();
  }
}
