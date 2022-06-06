import 'package:get/get.dart';
import 'package:plassusuario/settings/new_place/new_place_controller.dart';

class NewPlaceBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => NewPlaceController());
  }
}