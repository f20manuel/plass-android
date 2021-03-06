import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:plassusuario/application/theme.dart';
import 'package:plassusuario/help/last_trip_problem/missing_item/missing_item_controller.dart';

class MissingItemPage extends GetView<MissingItemController> {
  MissingItemPage({Key? key}) : super(key: key);

  final formKey = GlobalKey<FormState>();

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
                  child: Wrap(
                    children: const [
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Text('Objecto perdido',
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                            )),
                      )
                    ],
                  )),
            )),
        body: Obx(() => SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(children: [
              Container(
                margin: const EdgeInsets.only(bottom: 16.0),
                child: const Text(
                  'Olvidaste un objeto en tu último viaje. No te preocupes, vamos a hacer todo lo posible para recuperarlo. Cuéntanos brevemente que objeto dejaste y en qué viaje.',
                ),
              ),
              Form(
                  key: formKey,
                  child: Column(children: [
                    Container(
                        width: Get.width,
                        margin: const EdgeInsets.symmetric(vertical: 16.0),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                  margin: const EdgeInsets.only(bottom: 8.0),
                                  child: const Text('Correo electrónico',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                      ))),
                              TextFormField(
                                  readOnly: true,
                                  initialValue: controller.app.userInfo.email,
                                  decoration: InputDecoration(
                                      filled: true,
                                      fillColor: Colors.grey.shade300,
                                      hintText: controller.app.userInfo.email,
                                      enabledBorder: OutlineInputBorder(
                                        borderRadius:
                                        BorderRadius.circular(10.0),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderRadius:
                                        BorderRadius.circular(10.0),
                                      )))
                            ])),
                    Container(
                        width: MediaQuery.of(context).size.width,
                        margin: const EdgeInsets.only(bottom: 16.0),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                  margin: const EdgeInsets.only(bottom: 8.0),
                                  child: const Text('Mensaje',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                      ))),
                              TextFormField(
                                controller: controller.messageController.value,
                                decoration: InputDecoration(
                                    hintText: 'Escribe un mensaje',
                                    enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                        width: 2,
                                        color: Palette.primary,
                                      ),
                                      borderRadius: BorderRadius.circular(10.0),
                                    )),
                                  onChanged: (value) {
                                    controller.message.value = value;
                                  }
                              )
                            ])),
                    SizedBox(
                        width: MediaQuery.of(context).size.width,
                        height: 59,
                        child: ElevatedButton(
                            style: ButtonStyle(
                                foregroundColor:
                                MaterialStateProperty.all(Colors.white),
                                shape: MaterialStateProperty.all(
                                    RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10.0),
                                    ))),
                            onPressed: controller.message.value.isEmpty
                                ? null
                                : () {
                              if (formKey.currentState!.validate()) {
                                controller.sendMessage();
                              }
                            },
                            child: controller.loadingSend.isTrue
                                ? const CircularProgressIndicator.adaptive(
                              valueColor: AlwaysStoppedAnimation<Color>(
                                  Colors.white),
                            )
                                : const Text('Enviar')))
                  ]))
            ]),
          ),
        ))
    );
  }
}