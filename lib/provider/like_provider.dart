import 'package:flutter/material.dart';

class LikeProvider extends ChangeNotifier {
  Set order = {};
  like() {
    

    notifyListeners();
  }
}
