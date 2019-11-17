import 'package:flutter/material.dart';

class Variable extends ChangeNotifier{

  Color _background_color = Colors.blue;
  Color _font_color = Colors.green;
  double _FontSize = 15.0;



  set Bgcolor(Color c){
    _background_color = c;
    notifyListeners();
  }
  set ftcolor(Color c){
    _font_color = c;
    notifyListeners();
  }
  set ftsize(double size){
    _FontSize = size;
    notifyListeners();
  }

  get Bg_color => _background_color;
  get font_color => _font_color;
  get font_size =>_FontSize;


}