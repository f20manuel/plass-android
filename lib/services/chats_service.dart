import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';
import 'package:plassusuario/firestore.dart';
import 'package:plassusuario/models/booking.dart';
import 'package:plassusuario/models/message.dart';

class ChatsService extends GetxService {
  Stream<List<MessageModel>> messagesChanges(BookingModel? model) {
    List<MessageModel> messages = [];

    if (model == null) {
      return Stream.value(messages);
    }

    if (model.status != BookingStatus.pickup && model.status != BookingStatus.drop) {
      return Stream.value(messages);
    }

    Stream<DocumentSnapshot> query = Firestore.collection('chats')
      .doc('${model.driver!.id}-${model.customer.id}-${model.id}')
      .snapshots();

    query.listen((document) {
      List<MessageModel> models = [];
      for (Map message in document['messages']) {
        MessageModel model = MessageModel.fromMap(message);
        models.add(model);
      }

      if (models != messages) {
        messages.clear();
      }
    });

    return query.map((document) {
      for (Map message in document['messages']) {
        MessageModel model = MessageModel.fromMap(message);
        messages.add(model);
      }

      return messages.toList();
    });
  }
}