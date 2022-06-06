import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:plassusuario/environment_base.dart';

class EnvironmentDev implements EnvironmentBase {
  @override
  DocumentReference<Object?> get firestoreDB => FirebaseFirestore
      .instance
      .collection('versions')
      .doc("dev_version");

  @override
  String get version => "DEV";
}