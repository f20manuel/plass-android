import 'package:get/get.dart';
import 'package:plassusuario/application/controller.dart';
import 'package:plassusuario/home/home_controller.dart';
import 'package:plassusuario/services/auth_service.dart';

class PlassDrawerController extends GetxController {
  final AppController auth = Get.find();
  final AuthService authService = Get.find();
  final HomeController homeController = Get.find();
}