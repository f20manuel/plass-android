import 'package:get/get.dart';
import 'package:plassusuario/help/last_trip_problem/missing_item/missing_item_controller.dart';

class MissingItemBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => MissingItemController());
  }
}
