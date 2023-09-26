
import 'package:flutter/material.dart';

class HomeScreenProvider extends ChangeNotifier{
 
 bool isValue= false;

 boolChanging(bool value){
 
  isValue=value;
  notifyListeners();

 }



}