import 'package:get/get.dart';
import 'package:plassusuario/notifications_dialog/notifications_dialog_controller.dart';

class NotificationsDialogBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => NotificationsDialogController());
  }
}