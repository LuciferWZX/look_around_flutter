import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../abstracts/sharedPreferenceKey.dart';
class UserService {
  //从本地查询用户的token
  bool isLogin(){
    debugPrint("获取用户token");
    SharedPreferences sp = Get.find<SharedPreferences>();
    bool isLogin = false;
    var token = sp.getString(SharedPreferenceKey.token);
    if(token != null){
      //查询用户信息
      isLogin = true;
    }
    return isLogin;
  }
}