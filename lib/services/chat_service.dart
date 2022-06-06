import 'package:get/get.dart';
import 'package:plassusuario/firestore.dart';
import 'package:plassusuario/models/booking.dart';
import 'package:plassusuario/models/chat.dart';

class ChatService extends GetxService {
  Stream<ChatModel> changes(BookingModel booking) {
    return Firestore
      .collection('chats')
      .doc('${booking.driver!.id}-${booking.customer.id}-${booking.id}')
      .snapshots()
      .map((document) {
        ChatModel model = ChatModel.fromDocumentSnapshot(document);
        return model;
      });
  }
}