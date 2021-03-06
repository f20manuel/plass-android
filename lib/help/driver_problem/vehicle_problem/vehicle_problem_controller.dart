import 'dart:io';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:plassusuario/application/controller.dart';
import 'package:plassusuario/constants.dart';
import 'package:plassusuario/firestore.dart';
import 'package:plassusuario/services/help_service.dart';

class VehicleProblemController extends GetxController {
  var loadingSend = false.obs;
  var message = ''.obs;

  final HelpService helpService = Get.find();
  final AppController app = Get.find();
  final auth = FirebaseAuth.instance;

  //fields controllers
  final messageController = TextEditingController().obs;

  sendMessage() async {
    try {
      loadingSend.value = true;
      await helpService.add({
        'email': app.userInfo.email,
        'from': 'user',
        'message': message.value,
        'type': 'VehicleProblem',
        'user': Firestore.collection('users').doc(auth.currentUser!.uid),
      });

      loadingSend.value = false;

      messageController.value.clear();
      message.value = '';

      Get.snackbar(
          '¡Mensaje enviado!',
          'Hemos recibido tu mensaje. En breve, uno de nuestro agentes se pondrá en contacto contigo por email.'
      );
    } on SocketException catch (_) {
      PlassConstants.notNetworkMessage();
    } on FirebaseException catch (exception) {
      Firestore.generateLog(exception, 'line 21 in lib/help/driver_problem/vehicle_problem/vehicle_problem_controller.dart');
    }
  }
}