import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Model/ContestTeamModel.dart';

class Create_Team_Notifier extends ChangeNotifier{

  String data=" ";
  List<String> selected_players=[];
  bool iselementinlist=false;
  String selected_name=" ";
  String CAPTAIN=" ";
  String VICE_CAPTAIN=" ";



  SetViceCapatin(String v){
    VICE_CAPTAIN=v;
    notifyListeners();
  }
  SetCapatin(String c){
    CAPTAIN=c;
    notifyListeners();
  }
  String Get_ViceCapatin(){
    notifyListeners();
    return VICE_CAPTAIN;

  }
  String Get_Capatin(){
    notifyListeners();
    return CAPTAIN;
  }
  add(String value){
    selected_players.add(value);
    notifyListeners();
  }
  remove(String value){
    selected_players.remove(value);
    notifyListeners();
  }
  listlength(){
    notifyListeners();
    return selected_players.length;
  }
  clearlist(){
    selected_players.clear();
    notifyListeners();
  }
  bool isinlist(String name){
    bool isin=selected_players.contains(name);
    notifyListeners();
    return isin;
  }






}