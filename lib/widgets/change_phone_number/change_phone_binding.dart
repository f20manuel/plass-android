import 'package:get/get.dart';
import 'package:plassusuario/widgets/change_phone_number/change_phone_controller.dart';

class ChangePhoneBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ChangePhoneNumberController());
  }
}