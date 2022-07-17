import 'package:flutter/cupertino.dart';

class Language extends ChangeNotifier {
  String bahasa = 'ID';
  FontWeight tebalID = FontWeight.bold;
  FontWeight tebalEN = FontWeight.normal;

  ChangeEN() {
    bahasa = 'EN';
    tebalID = FontWeight.normal;
    tebalEN = FontWeight.bold;
    notifyListeners();
  }

  ChangeIN() {
    bahasa = 'ID';
    tebalID = FontWeight.bold;
    tebalEN = FontWeight.normal;
    notifyListeners();
  }


}