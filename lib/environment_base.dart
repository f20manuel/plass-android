import 'package:cloud_firestore/cloud_firestore.dart';

abstract class EnvironmentBase {
  DocumentReference get firestoreDB;
  String get version;
}