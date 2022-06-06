import 'package:get/get.dart';
import 'package:plassusuario/qr_code/qr_code_controller.dart';
import 'package:plassusuario/register/register_controller.dart';
import 'package:plassusuario/services/drivers_service.dart';

class QrCodeBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => DriverService());
    Get.lazyPut(() => RegisterController());
    Get.lazyPut(() => QrCodeController());
  }
}