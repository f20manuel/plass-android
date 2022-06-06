import 'package:get/get.dart';
import 'package:plassusuario/app/modules/select_payment_method/select_payment_method_controller.dart';

class SelectPaymentMethodBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SelectPaymentMethodController());
  }
}