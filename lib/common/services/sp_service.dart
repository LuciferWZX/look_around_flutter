import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
class SPService extends GetxService{
  //初始化sharedPreference实例
  Future<SharedPreferences> init ()async{
    debugPrint("初始化 SharedPreferences");
    return await SharedPreferences.getInstance();
  }
}