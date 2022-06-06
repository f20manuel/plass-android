import 'package:get/get.dart';
import 'package:plassusuario/help/others/others_problems/others_problems_controller.dart';

class OthersProblemsBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => OthersProblemsController());
  }
}