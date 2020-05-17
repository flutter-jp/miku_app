import 'package:flutter/material.dart';

class BaseModel with ChangeNotifier {
  bool loading = false;

  void load(bool loading) {
    this.loading = loading;
    notifyListeners();
  }
}
