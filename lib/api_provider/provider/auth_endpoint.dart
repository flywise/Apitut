import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart'as g;
import 'package:ninety_two/Home/home_scren.dart';
import 'package:ninety_two/signup/reset_email.dart';
import 'package:ninety_two/signup/signin.dart';

import '../../utils/helpers.dart';
import '../../widget/botton_nav.dart';


class AuthEndPointProvider{
  Dio client;
  AuthEndPointProvider({required this.client});

 ///Sign in
  signIn(String email,String pass) async{
    //call loading
     CommonLoader.showLoading();
    var data = {
      "email":email,
      "password":pass
    };
    try{
      Response r = await client.post("/api/user/signin",data: data);
      if(r.statusCode==200){
        print('Login sucessfully');
        CommonLoader.showSuccessDialog(title: 'Success');
         g.Get.to(()=>Bottom());
      }else{
        return Future.error(r.data["error"]);
      }
    }on DioError catch(e){
      //hide loading
      //show error dialog
    }
  }

  ///Register
  signUp(String name, String email,String pass) async{

    var data = {
      "name":name,
      "email":email,
      "password":pass
    };
    try{
      Response r = await client.post("/api/user/signup",data: data);
      if(r.statusCode==200){
        print('account sucessfully');
        // CommonLoader.showSuccessDialog(title: 'Success');
         g.Get.to(()=>SignIn());
      }else{
        print('failed');
        CommonLoader.showErrorDialog(title: 'Something went wrong...');
      }

    }on DioError catch(e){
      //hide loading
      //show error dialog
    }

  }

  ///Sent Password to mail
  resetPassword (String email) async{
    var data = {
      "email":email,
    };

    try {
      Response r = await client.post("/api/user/send-email", data: data);
      if (r.statusCode == 200) {
        print('sent sucessfully');
        // CommonLoader.showSuccessDialog(title: 'Success');
        g.Get.to(()=> ResetEmail());

      } else {
        print('failed');
        // CommonLoader.showErrorDialog(title: 'Something went wrong...');
      }
    }on DioError catch(e){
  //hide loading
  //show error dialog
  }
  }
}