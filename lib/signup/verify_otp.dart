import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:otp_text_field/otp_text_field.dart';

import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/style.dart';

class VerifyOtp extends StatefulWidget {
  const VerifyOtp({Key? key}) : super(key: key);

  @override
  State<VerifyOtp> createState() => _VerifyOtpState();
}

class _VerifyOtpState extends State<VerifyOtp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        centerTitle: true,
        title: const Text(
          "Login",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        leading: InkWell(
          onTap: () {
            Get.back();
          },
          child: Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
        ),
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            Center(
              child: const Text(
                "Verify phone number",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 25,
                    fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Center(
              child: const Text(
                "Enter the 4-Digit code sent to you at ",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                ),
              ),
            ),
            SizedBox(
              height: 8,
            ),
            Center(
              child: const Text(
                " +1501333982",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            OTPTextField(
              length: 4,
              width: MediaQuery.of(context).size.width,
              fieldWidth: 50,
              style: TextStyle(fontSize: 17),
              textFieldAlignment: MainAxisAlignment.spaceAround,
              fieldStyle: FieldStyle.underline,
              onCompleted: (pin) {
                print("Completed: " + pin);
              },
            ),
            SizedBox(
              height: 40,
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
                onPressed: () {},
                child: const Text(
                  "CONTINUE",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  child: Text("Didn’t receive code?"),
                  onTap: () {},
                ),
                Text(
                  "Resend Again.",
                  style: TextStyle(
                    color: Color(0xff241C57),
                    fontSize: 14,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Center(
              child: const Text(
                "By Signing up you agree to our Terms \n           Conditions & Privacy Policy.",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
