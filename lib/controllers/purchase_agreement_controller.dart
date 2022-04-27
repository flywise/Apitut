import 'package:get/get.dart';
import 'package:ninety_two/Home/purchas_agreement.dart';
import 'package:ninety_two/api_provider/client.dart';

import 'package:ninety_two/api_provider/provider/purchase_agreement_provider.dart';

import 'package:ninety_two/model/purchase_Agreement.dart';

class PurchaseAggrementController extends GetxController
    with StateMixin<List<PurchaseAgreementModel>> {
  callPurchaseAggrementApi() {
    Client client = Client();
    PuchaseAgreementP purchaseAgreementP =
        PuchaseAgreementP(client: client.init());

    purchaseAgreementP.purchaseAgreementProvider().then((value) {
      change(value, status: RxStatus.success());
    }, onError: (err) {
      change(null, status: RxStatus.error(err.toString()));
    });
  }

  @override
  void onInit() {
    callPurchaseAggrementApi();
    super.onInit();
  }
}
