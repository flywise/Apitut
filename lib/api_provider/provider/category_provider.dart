

import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:ninety_two/model/category_model.dart';

class CategoryProvider{
  Dio client;

  CategoryProvider({
    required this.client,
});

  Future<List<CategoryModel>> getCategory() async{
    try{
      Response r = await client.get("/api/category/category" );
      print(r.data);
      if(r.statusCode==200){
        return categoryModelFromJson(jsonEncode(r.data["data"]));

      }else{
        return Future.error(r.data["error"]);
      }

    }on DioError catch (e) {
      print(e.response!.data);
      return Future.error(e.message);
    }
  }
}