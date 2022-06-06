import 'package:get/get.dart';
import 'package:plassusuario/help/account_problem/account_problem_controller.dart';
import 'package:plassusuario/services/help/account_problem_service.dart';

class AccountProblemBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AccountProblemService());
    Get.lazyPut(() => AccountProblemController());
  }
}