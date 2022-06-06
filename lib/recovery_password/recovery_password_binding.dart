import 'package:get/get.dart';
import 'package:plassusuario/recovery_password/recovery_password_controller.dart';
import 'package:plassusuario/services/auth_service.dart';

class RecoveryPasswordBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AuthService());
    Get.lazyPut(() => RecoveryPasswordController());
  }
}