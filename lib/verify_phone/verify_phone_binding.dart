import 'package:get/get.dart';
import 'package:plassusuario/services/sms_service.dart';
import 'package:plassusuario/verify_phone/verify_phone_controller.dart';
import 'package:plassusuario/widgets/change_phone_number/change_phone_controller.dart';

class VerifyPhoneBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SmsService());
    Get.lazyPut(() => VerifyPhoneController());
    Get.lazyPut(() => ChangePhoneNumberController());
  }
}