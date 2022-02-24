import 'package:get/get.dart';
import 'package:look_around/common/middlewares/auth_middleware.dart';
import 'package:look_around/pages/Login/index.dart';
import 'package:look_around/pages/home/index.dart';

abstract class Routes{
  static const home = "/";
  static const login="/login";
}

class AppRoutes {
  static const initRoute = Routes.home;
  static final routes = [
    GetPage(
        name: Routes.home,
        page: ()=>HomePage(),
      middlewares: [
        AuthMiddleware(priority: 1)
      ]
    ),
    GetPage(
        name: Routes.login,
        page: ()=>LoginPage()
    )
  ];
}