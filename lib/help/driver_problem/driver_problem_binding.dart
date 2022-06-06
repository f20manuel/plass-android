import 'package:get/get.dart';
import 'package:plassusuario/help/driver_problem/driver_problem_controller.dart';
import 'package:plassusuario/services/help/driver_problem_service.dart';

class DriverProblemBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => DriverProblemService());
    Get.lazyPut(() => DriverProblemController());
  }
}