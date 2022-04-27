import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ninety_two/Home/home_aggrement_module/controller/home_aggrement_controller.dart';
import 'package:ninety_two/widget/home_agree.dart';

class HomeAgreement extends GetView<HomeAggrementController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0.0,
          backgroundColor: Color(0xff241C57),
          title: const Text(
            "Home Agreement",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
          leading: InkWell(
            onTap: () {
              Get.back();
            },
            child: Icon(
              Icons.arrow_back,
              color: Colors.white,
            ),
          ),
        ),
        body: controller.obx(
          (state) => ListView.builder(
              itemCount: state!.length,
              itemBuilder: (context, index) => HomeAgree(
                    heading: state[index].title,
                    subtitle: state[index].subTitle,
                    qar: state[index].qar,
                  )),
        )
        
        );
  }
}
