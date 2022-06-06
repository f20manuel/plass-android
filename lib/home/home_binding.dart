import 'package:get/get.dart';
import 'package:plassusuario/home/home_controller.dart';
import 'package:plassusuario/services/bookings_service.dart';
import 'package:plassusuario/services/car_types_service.dart';
import 'package:plassusuario/services/chats_service.dart';
import 'package:plassusuario/services/drivers_service.dart';
import 'package:plassusuario/services/here_service.dart';
import 'package:plassusuario/services/notifications_service.dart';
import 'package:plassusuario/services/tracking_service.dart';
import 'package:plassusuario/widgets/drawer/drawer_controller.dart';
import 'package:plassusuario/widgets/plass_swipe_button/plass_swipe_button_controller.dart';

class HomeBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HereService());
    Get.lazyPut(() => DriverService());
    Get.lazyPut(() => BookingsService());
    Get.lazyPut(() => CarTypesService());
    Get.lazyPut(() => TrackingService());
    Get.lazyPut(() => ChatsService());
    Get.lazyPut(() => NotificationsService());
    Get.lazyPut(() => PlassSwipeButtonController());
    Get.lazyPut(() => PlassDrawerController());
    Get.lazyPut(() => HomeController());
  }
}