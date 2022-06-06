import 'package:get/get.dart';
import 'package:plassusuario/help/last_trip_problem/payment_problem/payment_problem_controller.dart';

class PaymentProblemBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => PaymentProblemController());
  }
}