import 'dart:convert';

import 'package:dio/dio.dart';

import '../../model/purchase_Agreement.dart';

class PuchaseAgreementP {
  Dio client;

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
}
