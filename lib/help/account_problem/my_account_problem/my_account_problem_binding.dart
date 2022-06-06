import 'package:get/get.dart';
import 'package:plassusuario/help/account_problem/my_account_problem/my_account_problem_controller.dart';

class MyAccountProblemBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => MyAccountProblemController());
  }
}