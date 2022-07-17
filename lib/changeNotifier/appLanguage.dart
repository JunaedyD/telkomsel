import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AppLanguage extends ChangeNotifier {
  Locale _appLocale = Locale('id');

  Locale get appLocal => _appLocale ?? Locale("id");
  
  fetchLocale() async {
    // var prefs = await SharedPreferences.getInstance();
    // if (prefs.getString('language_code') == null) {
    //   _appLocale = Locale('en');
    //   return Null;
    // }
    // _appLocale = Locale(prefs.getString('language_code'));
    // return Null;

    _appLocale = Locale('id');
      return Null;
  }


  void changeLanguage(Locale type) async {
    // var prefs = await SharedPreferences.getInstance();
    if (_appLocale == type) {
      return;
    }
    if (type == Locale("id")) {
      _appLocale = Locale("id");
      // await prefs.setString('language_code', 'ar');
      // await prefs.setString('countryCode', '');
    } else {
      _appLocale = Locale("en");
      // await prefs.setString('language_code', 'en');
      // await prefs.setString('countryCode', 'US');
    }
    notifyListeners();
  }
}
