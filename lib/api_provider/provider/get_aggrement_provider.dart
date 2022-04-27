import 'dart:convert';

import 'package:dio/dio.dart';

import 'package:ninety_two/model/get_aggrement.dart';

class AggrementProvider {
  Dio client;

  AggrementProvider({
    required this.client,
  });

  Future<List<GetAgreementModel>> getAggrementByCategory({required String id}) async {
    try {
      Response r = await client
          .get("/api/agreement/agreements/$id");
      print(r.data);
      if (r.statusCode == 200) {
        return getAgreementModelFromJson(jsonEncode(r.data["data"]));
      } else {
        return Future.error(r.data["message"]);
      }
    } on DioError catch (e) {
      print(e.response!.data);
      return Future.error(e.message);
    }
  }
}
