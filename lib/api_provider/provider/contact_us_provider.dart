

import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:ninety_two/model/contact_model.dart';

import '../../utils/helpers.dart';

class ContactUsProvider{
  Dio client;

  ContactUsProvider({
    required this.client,
  });

Future<ContactModel> getContactInfo() async{
  try{
    Response r = await client.get("/api/contect/contect" );
    print(r.data);
    if(r.statusCode==200){
      return contactModelFromJson(jsonEncode(r.data["data"][0]));

    }else{
      return Future.error(r.data["error"]);
    }

  }on DioError catch (e) {
    print(e.response!.data);
    return Future.error(e.message);
  }
}

}