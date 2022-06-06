import 'package:get/get.dart';
import 'package:plassusuario/chat/chat_controller.dart';
import 'package:plassusuario/services/chat_service.dart';

class ChatBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ChatService());
    Get.lazyPut(() => ChatController());
  }
}