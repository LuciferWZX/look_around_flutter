import 'package:get/get.dart';
import 'package:get/get_connect/http/src/interceptors/get_modifiers.dart';
const baseUrl = "http://127.0.0.1:3000";
class BaseConnect extends GetConnect{

  @override
  void onInit() {
    //公共接口地址
    httpClient.baseUrl = baseUrl;
    //请求拦截
    httpClient.addRequestModifier<RequestModifier?>((request){
      request.headers['Authorization'] = 'Bearer xxxx';
      return request;
    });
    // 响应拦截
    httpClient.addResponseModifier((request, response) {
      // 处理逻辑
      return response;
    });
  }
}