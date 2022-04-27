import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ninety_two/Home/Notification.dart';
import 'package:ninety_two/Home/about_us.dart';
import 'package:ninety_two/Home/contact_module/contact.dart';
import 'package:ninety_two/Home/help_support.dart';
import 'package:ninety_two/Home/live_chat.dart';
import 'package:ninety_two/Home/privact_policy.dart';
import 'package:ninety_two/Home/terms_of_use.dart';
import 'package:ninety_two/signup/signin.dart';

import '../widget/botton_nav.dart';

class Setting extends StatefulWidget {
  const Setting({Key? key}) : super(key: key);

  @override
  State<Setting> createState() => _SettingState();
}

class _SettingState extends State<Setting> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: const Color(0xff241C57),
        automaticallyImplyLeading: false,
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          child: Column(children: [
            Container(
              padding: const EdgeInsets.all(10),
              height: 150,
              width: double.infinity,
              decoration: const BoxDecoration(
                color: Color(0xff241C57),
              ),
              child: Container(
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(
                  "assets/images/white.png",
                ))),
              ),
            ),
            Row(
              children: [
                Container(
                  padding: const EdgeInsets.all(15),
                  child: Row(children: [
                    Image.asset("assets/images/profile.png"),
                    const SizedBox(
                      width: 20,
                    ),
                    const Text("profile"),
                  ]),
                )
              ],
            ),
            Container(
              height: 1,
              width: MediaQuery.of(context).size.width * 0.9,
              decoration: const BoxDecoration(color: Colors.grey),
            ),
            Row(
              children: [
                Container(
                  padding: const EdgeInsets.all(15),
                  child: Row(children: [
                    Image.asset("assets/images/wallet.png"),
                    const SizedBox(
                      width: 20,
                    ),
                    const Text("wallet"),
                  ]),
                )
              ],
            ),
            Container(
              height: 1,
              width: MediaQuery.of(context).size.width * 0.9,
              decoration: const BoxDecoration(color: Colors.grey),
            ),
            Row(
              children: [
                Container(
                  padding: const EdgeInsets.all(15),
                  child: Row(children: [
                    Image.asset("assets/images/language.png"),
                    const SizedBox(
                      width: 18,
                    ),
                    const Text("language"),
                  ]),
                )
              ],
            ),
            Container(
              height: 1,
              width: MediaQuery.of(context).size.width * 0.9,
              decoration: const BoxDecoration(color: Colors.grey),
            ),
            Row(
              children: [
                InkWell(
                  onTap: () {
                    Get.to(const NotificationPage());
                  },
                  child: Container(
                    padding: const EdgeInsets.all(15),
                    child: Row(children: [
                      Image.asset("assets/images/notification.png"),
                      const SizedBox(
                        width: 23,
                      ),
                      const Text("Notification"),
                    ]),
                  ),
                )
              ],
            ),
            Container(
              height: 1,
              width: MediaQuery.of(context).size.width * 0.9,
              decoration: const BoxDecoration(color: Colors.grey),
            ),
            Row(
              children: [
                Container(
                  padding: const EdgeInsets.all(15),
                  child: Row(children: [
                    Image.asset("assets/images/gift.png"),
                    const SizedBox(
                      width: 20,
                    ),
                    const Text("Gift Card"),
                  ]),
                )
              ],
            ),
            Container(
              height: 1,
              width: MediaQuery.of(context).size.width * 0.9,
              decoration: const BoxDecoration(color: Colors.grey),
            ),
            Row(
              children: [
                InkWell(
                  onTap: () {
                    Get.to( AboutUs());
                  },
                  child: Container(
                    padding: const EdgeInsets.all(15),
                    child: Row(children: [
                      Image.asset("assets/images/about.png"),
                      const SizedBox(
                        width: 20,
                      ),
                      const Text("About Us"),
                    ]),
                  ),
                )
              ],
            ),
            Container(
              height: 1,
              width: MediaQuery.of(context).size.width * 0.9,
              decoration: const BoxDecoration(color: Colors.grey),
            ),
            Row(
              children: [
                InkWell(
                  onTap: () {
                    Get.to(ContactUs());
                  },
                  child: Container(
                    padding: const EdgeInsets.all(15),
                    child: Row(children: [
                      Image.asset("assets/images/contact.png"),
                      const SizedBox(
                        width: 15,
                      ),
                      const Text("Contact Us"),
                    ]),
                  ),
                )
              ],
            ),
            Container(
              height: 1,
              width: MediaQuery.of(context).size.width * 0.9,
              decoration: const BoxDecoration(color: Colors.grey),
            ),
            Row(
              children: [
                InkWell(
                  onTap: () {
                    Get.to(const HelpSupport());
                  },
                  child: Container(
                    padding: const EdgeInsets.all(15),
                    child: Row(children: [
                      Image.asset("assets/images/contact.png"),
                      const SizedBox(
                        width: 15,
                      ),
                      const Text("Help and Support"),
                    ]),
                  ),
                )
              ],
            ),
            Container(
              height: 1,
              width: MediaQuery.of(context).size.width * 0.9,
              decoration: const BoxDecoration(color: Colors.grey),
            ),
            Row(
              children: [
                InkWell(
                  onTap: () {
                    Get.to(const LiveChat());
                  },
                  child: Container(
                    padding: const EdgeInsets.all(15),
                    child: Row(children: [
                      Image.asset("assets/images/message.png"),
                      const SizedBox(
                        width: 20,
                      ),
                      const Text("Live Chat"),
                    ]),
                  ),
                )
              ],
            ),
            Container(
              height: 1,
              width: MediaQuery.of(context).size.width * 0.9,
              decoration: const BoxDecoration(color: Colors.grey),
            ),
            Row(
              children: [
                InkWell(
                  onTap: () {
                    Get.to(const PrivacyPolicy());
                  },
                  child: Container(
                    padding: const EdgeInsets.all(15),
                    child: Row(children: [
                      Image.asset("assets/images/privacy.png"),
                      const SizedBox(
                        width: 20,
                      ),
                      const Text("Pravicy policy"),
                    ]),
                  ),
                )
              ],
            ),
            Container(
              height: 1,
              width: MediaQuery.of(context).size.width * 0.9,
              decoration: const BoxDecoration(color: Colors.grey),
            ),
            Row(
              children: [
                InkWell(
                  onTap: () {
                    Get.to(const TermsUse());
                  },
                  child: Container(
                    padding: const EdgeInsets.all(15),
                    child: Row(children: [
                      Image.asset("assets/images/reload.png"),
                      const SizedBox(
                        width: 20,
                      ),
                      const Text("Terms of use"),
                    ]),
                  ),
                )
              ],
            ),
            Container(
              height: 1,
              width: MediaQuery.of(context).size.width * 0.9,
              decoration: const BoxDecoration(color: Colors.grey),
            ),
            Row(
              children: [
                InkWell(
                  onTap: (){
                    Get.offAll(()=> SignIn());
                  },
                  child: Container(
                    padding: const EdgeInsets.all(15),
                    child: Row(children: [
                      Image.asset("assets/images/logout.png"),
                      const SizedBox(
                        width: 20,
                      ),
                      const Text("Logout"),
                    ]),
                  ),
                )
              ],
            ),
            Container(
              height: 1,
              width: MediaQuery.of(context).size.width * 0.9,
              decoration: const BoxDecoration(color: Colors.grey),
            ),
          ]),
        ),
      ),
      // bottomNavigationBar: Bottom(),
    );
  }
}
