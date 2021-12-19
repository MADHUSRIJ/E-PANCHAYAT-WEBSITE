import 'package:flutter/material.dart';

class provider with ChangeNotifier{

  String _page = "0";

  String get Page => _page;

  void set_page(String a){
    this._page = a;
    notifyListeners();
  }

}