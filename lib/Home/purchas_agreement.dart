import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ninety_two/Home/purchase_sumbit.dart';
import 'package:ninety_two/model/purchase_Agreement.dart';

import '../controllers/purchase_agreement_controller.dart';

class PurchaseAgreement extends GetView<PurchaseAggrementController> {
  PurchaseAggrementController purchaseAggrementController =
      Get.put(PurchaseAggrementController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Color(0xff241C57),
        title: const Text(
          "Purchase Agreement",
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
      body: Column(
        children: [
          purchaseAggrementController.obx((state) => Expanded(
                child: ListView.builder(
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  itemCount: state!.length,
                  itemBuilder: (context, index) => Container(
                       child: Image.network(
                          (state[index].subCategoryImg.url).toString()),
                      // child: Text((state[index].subCategoryImg.filename)),
                      ),
                ),
              )),
          SizedBox(
            height: 10,
          ),
          Text(
            "Click here to fill the form",
            style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            margin: EdgeInsets.only(bottom: 10),
            height: 48,
            width: 225,
            decoration: BoxDecoration(
              color: const Color(0xff241C57),
            ),
            child: TextButton(
              style: ButtonStyle(
                foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
              ),
              onPressed: () {
                Get.to(PurchaseSubmit());
              },
              child: const Text(
                "Buy now",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
