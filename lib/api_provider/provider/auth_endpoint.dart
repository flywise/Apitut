import 'package:dio/dio.dart';

import 'package:get/get.dart' as g;
import 'package:get_storage/get_storage.dart';
import 'package:ninety_two/api_provider/client.dart';

import 'package:ninety_two/signup/reset_email.dart';
import 'package:ninety_two/signup/signin.dart';

import '../../utils/helpers.dart';
import '../../widget/botton_nav.dart';

class AuthEndPointProvider {
  Dio client;
  AuthEndPointProvider({required this.client});

  //Sign in
  signIn(String email, String pass) async {
    //call loading
    CommonLoader.showLoading();
    var data = {"email": email, "password": pass};
    try {
      Response r = await client.post("/api/user/signin", data: data);
      CommonLoader.hideLoading();
      if (r.statusCode == 200) {
        Client.token = r.data["token"];
        GetStorage box = GetStorage();
        await box.write("token", Client.token);
        // print('Login sucessfully');
        g.Get.to(() => Bottom());
      } else {
        CommonLoader.showErrorDialog(description: r.data["error"]);
        CommonLoader.hideLoading();
      }
    } on DioError catch (e) {
      //hide loading
      //show error dialog
      CommonLoader.showErrorDialog(description: e.message);
      CommonLoader.hideLoading();
    }
  }

  ///Register
  signUp(String name, String email, String pass) async {
    CommonLoader.showLoading();
    var data = {"name": name, "email": email, "password": pass};
    try {
      Response r = await client.post(
        "/api/user/signup",
        data: data,
      );
      CommonLoader.hideLoading();
      if (r.statusCode == 200) {
        print('account sucessfully');
        // CommonLoader.showSuccessDialog(title: 'Success');
        g.Get.to(() => SignIn());
      } else {
        print('failed');
        CommonLoader.showErrorDialog(title: 'Something went wrong...');
      }
    } on DioError catch (e) {
      //hide loading
      //show error dialog
    }
  }

  ///Sent Password to mail
  resetPassword(String email) async {
    var data = {
      "email": email,
    };

    try {
      Response r = await client.post("/api/user/send-email", data: data);
      if (r.statusCode == 200) {
        print('sent sucessfully');
        // CommonLoader.showSuccessDialog(title: 'Success');
        g.Get.to(() => ResetEmail());
      } else {
        print('failed');
        // CommonLoader.showErrorDialog(title: 'Something went wrong...');
      }
    } on DioError catch (e) {
      //hide loading
      //show error dialog
    }
  }

  // formSubmit
  // FormSubmit(
  //   String name,
  //   String email,
  //   String address,
  //   String mobileno,
  //   String agreementid,
  // ) async {
  //   //call loading
  //   CommonLoader.showLoading();
  //   var data = {
  //     "email": email,
  //     "name": name,
  //     "address": address,
  //     "mobileNumber": mobileno,
  //     "agreementId": agreementid
  //   };
  //   try {
  //     Response r = await client.post("/api/submit/submit/", data: data);
  //     CommonLoader.hideLoading();
  //     if (r.statusCode == 200) {
  //       print('Inserted  sucessfully');
  //       CommonLoader.showSuccessDialog(title: 'Success');
  //       g.Get.to(() => Bottom());
  //     } else {
  //       return Future.error(r.data["error"]);
  //     }
  //   } on DioError catch (e) {
  //     CommonLoader.hideLoading();
  //     CommonLoader.showErrorDialog(description: e.message);
  //     //hide loading
  //     //show error dialog

  //   }
  // }
}
