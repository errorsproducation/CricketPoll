import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Model/ContestTeamModel.dart';

class Create_Team_Notifier extends ChangeNotifier{

  String data=" ";
  List<String> selected_players=[];
  bool iselementinlist=false;
  String selected_name=" ";


  Color color(String name){
    Color c1=Colors.white;
    Color c2=Colors.black;
    bool isinlist=selected_players.contains(name);
    notifyListeners();
    return isinlist? c2:c1;

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






}