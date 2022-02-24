import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:look_around/common/utils/dependency_injection.dart';
import 'package:look_around/routes/app_routes.dart';

void main()async {
  WidgetsFlutterBinding.ensureInitialized();
  //初始化services
  await DependencyInjection.init();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {

    return GetMaterialApp(
      title: 'Look Around App',
      initialRoute: AppRoutes.initRoute,
      getPages: AppRoutes.routes,
    );
  }
}