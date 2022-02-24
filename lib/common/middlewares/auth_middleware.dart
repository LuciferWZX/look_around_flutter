import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:look_around/common/controllers/user_controller.dart';
import 'package:look_around/common/services/user_service.dart';
import 'package:look_around/routes/app_routes.dart';

class AuthMiddleware extends GetMiddleware{
  @override
  int? priority = 0;
  AuthMiddleware({required this.priority});
  @override
  RouteSettings? redirect(String? route) {
    UserService userService = Get.find<UserService>();
    var isLogin = userService.isLogin();

    if(!isLogin){
      //获取当前用户的信息，然后如果没有则到登录页面
      return RouteSettings(name: Routes.login);
    }
  }
}