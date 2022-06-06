import 'package:get/get.dart';
import 'package:plassusuario/location_dialog/location_dialog_controller.dart';

class LocationDialogBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => LocationDialogController());
  }
}