import 'package:get/get.dart';
import 'package:plassusuario/payments/payment_controller.dart';
import 'package:plassusuario/services/payment_service.dart';

class PaymentBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => PaymentService());
    Get.lazyPut(() => PaymentController());
  }
}