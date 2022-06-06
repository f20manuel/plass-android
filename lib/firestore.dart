import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:device_info_plus/device_info_plus.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:plassusuario/environment.dart';

class Firestore {
  Firestore._();

  static CollectionReference collection(String _collection) {
    return Environment().config.firestoreDB.collection(_collection);
  }

  static final deviceInfoPlugin = DeviceInfoPlugin();
  static void generateLog(dynamic exception, String codeData) async {
    AndroidDeviceInfo data = await deviceInfoPlugin.androidInfo;
    PackageInfo packageInfo = await PackageInfo.fromPlatform();

    Firestore.collection('logs').add({
      'deviceInfo': {'version.securityPatch': data.version.securityPatch,
        'version.sdkInt': data.version.sdkInt,
        'version.release': data.version.release,
        'version.previewSdkInt': data.version.previewSdkInt,
        'version.incremental': data.version.incremental,
        'version.codename': data.version.codename,
        'version.baseOS': data.version.baseOS,
        'board': data.board,
        'bootloader': data.bootloader,
        'brand': data.brand,
        'device': data.device,
        'display': data.display,
        'fingerprint': data.fingerprint,
        'hardware': data.hardware,
        'host': data.host,
        'id': data.id,
        'manufacturer': data.manufacturer,
        'model': data.model,
        'product': data.product,
        'supported32BitAbis': data.supported32BitAbis,
        'supported64BitAbis': data.supported64BitAbis,
        'supportedAbis': data.supportedAbis,
        'tags': data.tags,
        'type': data.type,
        'isPhysicalDevice': data.isPhysicalDevice,
        'androidId': data.androidId,
        'systemFeatures': data.systemFeatures,
      },
      'software_version': '${packageInfo.packageName} v${packageInfo.version}',
      'user': FirebaseAuth.instance.currentUser?.uid ?? '',
      'exception': exception.toString(),
      'date': Timestamp.now(),
      'file_line': codeData,
    });
  }
}