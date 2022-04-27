

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ninety_two/api_provider/client.dart';
import 'package:ninety_two/api_provider/provider/auth_endpoint.dart';
import 'package:ninety_two/signup/reset_email.dart';

import '../utils/textfield.dart';


class ForgetPassword extends StatefulWidget {
  const ForgetPassword({Key? key}) : super(key: key);

  @override
  State<ForgetPassword> createState() => _ForgetPasswordState();
}

class _ForgetPasswordState extends State<ForgetPassword> {

  final emailFormKey = GlobalKey<FormState>();
  final _email = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        centerTitle: true,
        title: const Text(
          "Forgot Password",
          style: const TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        leading: InkWell(
          onTap: () {
            Get.back();
          },
          child: const Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
        ),
      ),
      body: Container(
        padding: const EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Forgot Password",
              style: const TextStyle(color: Colors.black, fontSize: 34),
            ),
            const Text(
              "Enter your email address and we will send\nyou a reset instructions.",
              style: const TextStyle(color: Colors.black, fontSize: 14),
            ),
            const SizedBox(
              height: 20,
            ),
            Form(
              key: emailFormKey,
              child: Container(
                decoration: BoxDecoration(
                    color: const Color(0xffF3F2F2), borderRadius: BorderRadius.circular(10)),
                child: TextFormField(
                  controller:   _email,
                  decoration: const InputDecoration(
                      labelStyle: TextStyle(
                        color: Colors.black,
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.black),
                      ),
                      hintText: 'Enter email',
                      suffixIcon: Padding(
                        padding: EdgeInsets.all(10.0),
                      ),
                      contentPadding: EdgeInsets.all(5)),
                ),
              )
              // Column(
              //   children: [
              //     NTextField(
              //
              //       hintText: " Enter Email",
              //     ),
              //     SizedBox(
              //       height: 20,
              //     ),
              //   ],
              // ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              height: 48,
              width: 375,
              decoration: BoxDecoration(
                  color: const Color(0xff241C57),
                  borderRadius: BorderRadius.circular(10)),
              child: TextButton(
                style: ButtonStyle(
                  foregroundColor:
                      MaterialStateProperty.all<Color>(Colors.white),
                ),
                onPressed: () {


                  // Get.to(ResetEmail());
                  Client register = Client();
                  AuthEndPointProvider authPoint = AuthEndPointProvider(client: register.init());
                  authPoint.resetPassword(_email.text,  );
                },
                child: const Text("RESET PASSWORD"),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
