import 'package:get/get.dart';
import 'package:plassusuario/application/controller.dart';
import 'package:plassusuario/services/auth_service.dart';
import 'package:plassusuario/services/drivers_service.dart';
import 'package:plassusuario/services/users_service.dart';

class AppBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(DriverService());
    Get.put(UsersService());
    Get.put(AuthService());
    Get.put(AppController());
  }
}