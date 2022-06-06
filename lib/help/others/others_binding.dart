import 'package:get/get.dart';
import 'package:plassusuario/help/others/others_controller.dart';
import 'package:plassusuario/services/help/others_service.dart';

class OthersBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => OthersService());
    Get.lazyPut(() => OthersController());
  }
}