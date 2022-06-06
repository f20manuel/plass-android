import 'package:get/get.dart';
import 'package:plassusuario/settings/privacy/privacy_controller.dart';

class PrivacyBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => PrivacyController());
  }
}