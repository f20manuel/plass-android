import 'package:get/get.dart';
import 'package:plassusuario/payments/payment_repository.dart';

class PaymentController extends GetxController with PaymentRepository{
  @override
  void onInit() {
    paymentMethodsList.bindStream(streamByUser(auth.currentUser));
    myPaymentsList.bindStream(streamByUser2(auth.currentUser));
    super.onInit();
  }

  @override
  void onClose() {
    paymentMethodsList.close();
    super.onClose();
  }
}