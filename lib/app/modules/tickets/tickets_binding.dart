import 'package:get/get.dart';
import 'package:plassusuario/app/modules/tickets/tickets_controller.dart';

class TicketsBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => TicketsController());
  }
}