import 'package:flutter/material.dart';
import 'package:get/get.dart';



import '../../widget/contactinfo.dart';
import 'controller/contact_controller.dart';

class ContactUs extends GetView<ContactUsController> {
  ContactUsController contactUsController = Get.put(ContactUsController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Color(0xff241C57),
        title: const Text(
          "Contact us",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        leading: InkWell(
          onTap: () {
            Get.back();
          },
          child: const Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
        ),
      ),
      body: contactUsController.obx(
          (state)=> Container(
            padding: EdgeInsets.all(20),
            child: Column(
              children: [
                contactinfo(
                  upper: "Name",
                  lower: state!.componyName,
                  image: "assets/images/clarity_build.png",
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.width * 0.04,
                ),
                contactinfo(
                  upper: "Email",
                  lower: state.email,
                  image: "assets/images/email_cmpany.png",
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.width * 0.04,
                ),
                contactinfo(
                  upper: "Contact no.",
                  lower: state.contectInfo,
                  image: "assets/images/voice_phone.png",
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.width * 0.04,
                ),
                contactinfo(
                  image: "assets/images/location_company.png",
                  upper: "Address",
                  lower:
                      state.address,
                ),
              ],
            )),
        onError: (err)=>Center(child: Text(err!))
      ),
    );
  }
}
