import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:plassusuario/help/help_controller.dart';
import 'package:plassusuario/models/help.dart';

class HelpPage extends GetView<HelpController> {
  const HelpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        backgroundColor: Colors.white,
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(38.0),
          child: Container(
            width: MediaQuery.of(context).size.width,
            padding: const EdgeInsets.only(left: 16.0, bottom: 16),
            child: Row(
              children: const [
                Text('Ayuda',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  )
                )
              ],
            )
          ),
        )
      ),
      body: ListView.separated(
        padding: const EdgeInsets.all(8),
        separatorBuilder: (BuildContext context, int index) =>
        const Divider(),
        itemCount: controller.service.menu.length,
        itemBuilder: (BuildContext context, int index) {
          HelpMenuItemModel item = controller.service.menu[index];
          return ListTile(
            onTap: () => Get.to(item.page, binding: item.binding),
            title: Text(item.title),
            trailing: const Icon(Icons.chevron_right_outlined),
          );
        },
      )
    );
  }

}