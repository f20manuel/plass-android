import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:get/get.dart';
import 'package:plassusuario/application/controller.dart';
import 'package:plassusuario/notifications_dialog/notifications_dialog_binding.dart';
import 'package:plassusuario/notifications_dialog/notifications_dialog_controller.dart';
import 'package:plassusuario/notifications_dialog/notifications_dialog_page.dart';
import 'package:plassusuario/services/notifications_service.dart';

class SettingsController extends GetxController {
  var notificationsSwitch = false.obs;
  final NotificationsService notificationsService = Get.find();
  final NotificationsDialogController notifications = Get.find();
  final AppController app = Get.find();
  final auth = FirebaseAuth.instance;

  @override
  void onReady() {
    getCheckNotificationPermStatus();
    super.onReady();
  }

  getCheckNotificationPermStatus() async {
    NotificationSettings settings = await notificationsService.checkPermissions();

    if (
      settings.authorizationStatus == AuthorizationStatus.authorized ||
      settings.authorizationStatus == AuthorizationStatus.provisional
    ) {
      notificationsSwitch.value = true;
      return;
    }

    notificationsSwitch.value = false;
  }

  goToNotificationsDialog() {
    Get.to(
      () => const NotificationsDialogPage(),
      binding: NotificationsDialogBinding()
    );
  }
}