import 'package:get/get.dart';
import 'package:look_around/common/controllers/user_controller.dart';
import 'package:look_around/common/services/sp_service.dart';
import 'package:look_around/common/services/user_service.dart';
///依赖注入
class DependencyInjection {
  // Shared_preference
  static Future<void>init()async {
    //初始化sp
    await Get.putAsync(() => SPService().init());
    //用户操作的Service
    Get.put(UserService());
    Get.put(UserController());
  }
}