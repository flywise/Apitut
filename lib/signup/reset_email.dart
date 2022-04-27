import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ninety_two/widget/botton_nav.dart';

class ResetEmail extends StatefulWidget {
  const ResetEmail({Key? key}) : super(key: key);

  @override
  State<ResetEmail> createState() => _ResetEmailState();
}

class _ResetEmailState extends State<ResetEmail> {
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
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
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
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Reset email sent",
              style: TextStyle(color: Colors.black, fontSize: 34),
            ),
            const SizedBox(height: 10),
            const Text(
              "We have sent a instructions email to ",
              style: TextStyle(color: Colors.black, fontSize: 14),
            ),
            Row(
              children: const [
                Text(
                  "Nawfazim@icloud.com.",
                  style: TextStyle(color: Colors.black, fontSize: 14),
                ),
                SizedBox(height: 25),
                Text(
                  "   Having problem? ",
                  style: TextStyle(
                      color: Color(0xff241C57),
                      fontSize: 14,
                      fontWeight: FontWeight.bold),
                ),
              ],
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
                  Get.to(Bottom());
                },
                child: const Text(
                  "SEND AGAIN",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
