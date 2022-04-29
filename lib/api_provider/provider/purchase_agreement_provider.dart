import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:ninety_two/Home/cart.dart';
import 'package:ninety_two/utils/helpers.dart';
import 'package:ninety_two/widget/botton_nav.dart';

import '../../model/purchase_Agreement.dart';
import 'package:get/get.dart' as g;

class PuchaseAgreementP {
  late Dio client;

  PuchaseAgreementP({
    required this.client,
  });

  Future<List<PurchaseAgreementModel>> purchaseAgreementProvider() async {
    try {
      Response r = await client.get("/api/subcategory/subcategory");
      print(r.data);
      if (r.statusCode == 200) {
        return purchaseAgreementModelFromJson(jsonEncode(r.data["data"]));
      } else {
        return Future.error(r.data["message"]);
      }
    } on DioError catch (e) {
      print(e.response!.data);
      return Future.error(e.message);
    }
  }

  submitForm(
      {required String aggrementId,
      required String name,
      required String address,
      required String email,
      required String mobileNumber,
      required String imagePath}) async {
    CommonLoader.showLoading();
    var data = FormData.fromMap({
      'name': name,
      'address': address,
      'email': email,
      'mobileNumber': mobileNumber,
      'agreementId': aggrementId,
      'myFeild': await MultipartFile.fromFile(imagePath)
    });
    try {
      Response r = await client.post("/api/submit/submit/", data: data);
      CommonLoader.hideLoading();
      if (r.statusCode == 200) {
        print('Inserted  sucessfully');
        // CommonLoader.showSuccessDialog();
        g.Get.to(() => Cart());
      } else {
        CommonLoader.hideLoading();
        return Future.error(r.data["error"]);
      }
    } on DioError catch (e) {
      //hide loading
      //show error dialog
      CommonLoader.hideLoading();
      CommonLoader.showErrorDialog(description: e.message);
    }
  }
}
