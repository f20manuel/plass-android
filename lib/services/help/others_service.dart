import 'package:get/get.dart';
import 'package:plassusuario/help/others/others_problems/others_problems_binding.dart';
import 'package:plassusuario/help/others/others_problems/others_problems_page.dart';
import 'package:plassusuario/models/help.dart';

class OthersService extends GetxService {
  List<HelpMenuItemModel> menu = [
    HelpMenuItemModel(
      title: 'Si en las opciones anteriores no encontraste tu problema.',
      page: OthersProblemsPage(),
      binding: OthersProblemsBinding(),
    )
  ];
}