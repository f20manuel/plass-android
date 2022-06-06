import 'package:get/get.dart';
import 'package:plassusuario/help/help_controller.dart';
import 'package:plassusuario/services/help_service.dart';

class HelpBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HelpService());
    Get.lazyPut(() => HelpController());
  }
}