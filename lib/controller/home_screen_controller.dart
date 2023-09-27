
import 'package:flutter/material.dart';

class HomeScreenProvider extends ChangeNotifier{
 
 bool isValue= false;
 

//======================
 //with this some changes bring in screen
//======================
 boolChanging(bool value){
 
  isValue=value;
  notifyListeners();

 }
  
}