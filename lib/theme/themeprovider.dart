import 'package:coffeeshop/theme/themes.dart';
import 'package:flutter/material.dart';


class Themeprovider extends ChangeNotifier{
  ThemeData _currentTheme=lightmode;

  ThemeData get currentTheme =>_currentTheme;
  void toggleTheme(){
    if(_currentTheme == lightmode){
      _currentTheme=darkmode;
    }else{
      _currentTheme=lightmode;
    }
    notifyListeners();
  }

}