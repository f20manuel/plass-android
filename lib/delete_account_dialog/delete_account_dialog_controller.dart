import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:plassusuario/application/controller.dart';
import 'package:plassusuario/services/auth_service.dart';
import 'package:plassusuario/services/users_service.dart';

class DeleteAccountDialogController extends GetxController {
  // Services
  final UsersService usersService = Get.find();
  final AuthService authService = Get.find();

  // Controllers and instances
  final auth = FirebaseAuth.instance;
  final AppController app = Get.find();

  delete() async {
    await usersService.updateAuth({
      'soft_delete': DateTime.now().add(const Duration(days: 15))
    });
    authService.logout();
  }
}