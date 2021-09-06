import 'package:provider/provider.dart';
import 'package:flutter/material.dart';

class MyProvider with ChangeNotifier{
  bool x=false;
  ThemeMode tm=ThemeMode.light;
  void switchChanged (bool val){

      x=val;
      if(x==false){
        tm=ThemeMode.light;
        print("$tm");
      }
      else{
        tm =ThemeMode.dark;
        print("$tm");
      }
      notifyListeners();

  }
}

