enum UserPermissions{
  poor , //基本无权限
  user , //正常权限
  admin , //管理员权限
  vip , //最高权限
}
class User {
  String? id;
  String? username;
  String? nickname;
  String? email;
  bool? active;
  String? status;
  UserPermissions? permissions;
  String? createTime;
  String? updateTime;
  String? avatar;
}