import 'package:flutter/cupertino.dart';

class Appconfigprovider extends ChangeNotifier {
  String applang = 'en';

  void change(String language) {
    if (applang == language) {
      return;
    } else {
      applang = language;
      notifyListeners();
    }
  }
}
