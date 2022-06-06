import 'package:get/get.dart';
import 'package:plassusuario/my_trips/my_trips_controller.dart';
import 'package:plassusuario/services/bookings_service.dart';

class MyTripsBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => BookingsService());
    Get.lazyPut(() => MyTripsController());
  }
}