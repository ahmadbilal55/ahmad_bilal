import 'dart:ui';


enum AppTheme{
  dark,
  light
}

class ThemeManager{

  bool get _isThemeLight => theme==AppTheme.light;

  AppTheme theme=AppTheme.light;
  String defaultFont = "Caviar_Dreams";
  Color get primaryColor => _isThemeLight?const Color(0xff041C32):const Color(0xffb4b4b4);
  Color get backgroundColor => _isThemeLight?const Color(0xffb4b4b4):const Color(0xff041c32);
  Color get cardColor =>  _isThemeLight?const Color(0xff04293A):const Color(0xffb4b4b4);
}