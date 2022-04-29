import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:ninety_two/Home/Notification.dart';
import 'package:ninety_two/Home/about_us.dart';
import 'package:ninety_two/Home/cart.dart';
import 'package:ninety_two/Home/category.dart';
import 'package:ninety_two/Home/contact_module/contact.dart';
import 'package:ninety_two/Home/help_support.dart';
import 'package:ninety_two/Home/home_aggrement_module/home_aggrement.dart';
import 'package:ninety_two/Home/home_scren.dart';
import 'package:ninety_two/Home/invoce.dart';
import 'package:ninety_two/Home/order_details.dart';
import 'package:ninety_two/Home/purchas_agreement.dart';
import 'package:ninety_two/Home/purchase_sumbit.dart';
import 'package:ninety_two/Home/terms_of_use.dart';
import 'package:ninety_two/formfield/form_field.dart';
import 'package:ninety_two/onbording.dart';
import 'package:ninety_two/signup/create_account.dart';
import 'package:ninety_two/signup/forget_pass.dart';
import 'package:ninety_two/signup/phone_login.dart';
import 'package:ninety_two/signup/reset_email.dart';
import 'package:ninety_two/signup/signin.dart';
import 'package:ninety_two/signup/signin.dart';
import 'package:ninety_two/signup/verify_otp.dart';
import 'package:ninety_two/splash_screen.dart';
import 'package:ninety_two/widget/botton_nav.dart';
import 'package:ninety_two/widget/home_agree.dart';

import 'Home/privact_policy.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: {
        "/": (context) => Splash(),
      },
    );
  }
}
