import 'package:get/get.dart';
import 'package:plassusuario/resume/resume_controller.dart';
import 'package:plassusuario/services/bookings_service.dart';

class ResumeBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => BookingsService());
    Get.lazyPut(() => ResumeController());
  }
}