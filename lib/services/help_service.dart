import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';
import 'package:plassusuario/firestore.dart';
import 'package:plassusuario/help/account_problem/account_problem_binding.dart';
import 'package:plassusuario/help/account_problem/account_problem_page.dart';
import 'package:plassusuario/help/driver_problem/driver_problem_binding.dart';
import 'package:plassusuario/help/driver_problem/driver_problem_page.dart';
import 'package:plassusuario/help/last_trip_problem/last_trip_problem_binding.dart';
import 'package:plassusuario/help/last_trip_problem/last_trip_problem_page.dart';
import 'package:plassusuario/help/others/others_binding.dart';
import 'package:plassusuario/help/others/others_page.dart';
import 'package:plassusuario/models/help.dart';

class HelpService extends GetxService {
  List<HelpMenuItemModel> menu = [
    HelpMenuItemModel(
      title: 'Tuve un problema con mi último viaje',
      page: const LastTripProblemPage(),
      binding: LastTripProblemBinding(),
    ),
    HelpMenuItemModel(
      title: 'Tuve un problema con el vehículo',
      page: const DriverProblemPage(),
      binding: DriverProblemBinding(),
    ),
    HelpMenuItemModel(
      title: 'Tuve un problema con mi cuenta',
      page: const AccountProblemPage(),
      binding: AccountProblemBinding(),
    ),
    HelpMenuItemModel(
      title: 'Otro',
      page: const OthersPage(),
      binding: OthersBinding(),
    ),
  ];

  Future<DocumentReference> add(Map<String, dynamic> data) async {
    return await Firestore.collection('help').add(data);
  }
}