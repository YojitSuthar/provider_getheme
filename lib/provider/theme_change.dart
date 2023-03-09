import 'package:flutter/material.dart';

class Change with ChangeNotifier{

  ThemeMode themeMode = ThemeMode.system;

  void changeT(ThemeMode theme){
    themeMode=theme;
    notifyListeners();
  }
}



