import 'package:get/get.dart';
import 'package:plassusuario/help/account_problem/my_account_problem/my_account_problem_binding.dart';
import 'package:plassusuario/help/account_problem/my_account_problem/my_account_problem_page.dart';
import 'package:plassusuario/models/help.dart';

class AccountProblemService extends GetxService {
  List<HelpMenuItemModel> menu = [
    HelpMenuItemModel(
      title: 'Si tienes problemas con tu cuenta.',
      page: MyAccountProblemPage(),
      binding: MyAccountProblemBinding(),
    )
  ];
}