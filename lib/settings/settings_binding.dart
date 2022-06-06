import 'package:get/get.dart';
import 'package:plassusuario/notifications_dialog/notifications_dialog_controller.dart';
import 'package:plassusuario/settings/settings_controller.dart';

class SettingsBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => NotificationsDialogController());
    Get.lazyPut(() => SettingsController());
  }
}