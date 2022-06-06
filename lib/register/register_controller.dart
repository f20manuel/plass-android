import 'dart:io';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:plassusuario/constants.dart';
import 'package:plassusuario/firestore.dart';
import 'package:plassusuario/models/driver.dart';
import 'package:plassusuario/models/user.dart';
import 'package:plassusuario/qr_code/qr_code_binding.dart';
import 'package:plassusuario/qr_code/qr_code_page.dart';
import 'package:plassusuario/register/register_binding.dart';
import 'package:plassusuario/register/register_page.dart';
import 'package:plassusuario/services/auth_service.dart';
import 'package:plassusuario/services/drivers_service.dart';

class RegisterArguments {
  final DriverModel referred;

  RegisterArguments({
    required this.referred,
  });
}

class RegisterController extends GetxController {
  RegisterArguments? args = Get.arguments;
  var securePassword = true.obs;
  var phoneBorderWidth = 1.0.obs;
  var phoneBorderColor = Colors.grey.obs;
  var gender = Gender.male.obs;
  var acceptedTerms = false.obs;
  var loadingRegister = false.obs;

  final auth = FirebaseAuth.instance;
  final AuthService authService = Get.find();

  void register(String firstName, String lastName, String email, String phone, String password, Gender male) async {
    try {
      loadingRegister.value = true;
      await authService.register(
          firstName,
          lastName,
          email,
          phone,
          password,
          gender.value,
          args
      );
      loadingRegister.value = false;
    } on SocketException catch (_) {
      PlassConstants.notNetworkMessage();
    } catch (exception) {
      Firestore.generateLog(exception, 'Function register in lib/register/register_controller.dart');
    }
  }

  @override
  void onClose() {
    loadingRegister.value = false;
    super.onClose();
  }
}