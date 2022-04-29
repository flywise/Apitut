import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ninety_two/Home/cart.dart';
import 'package:ninety_two/Home/purchas_agreement.dart';
import 'package:ninety_two/formfield/form_field.dart';

class HomeAgree extends StatefulWidget {
  String? heading;
  String? subtitle;
  String? qar;
  HomeAgree({Key? key, this.heading, this.subtitle, this.qar})
      : super(key: key);

  @override
  State<HomeAgree> createState() => _HomeAgreeState();
}

class _HomeAgreeState extends State<HomeAgree> {
  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        side: BorderSide(color: Colors.black45, width: 1),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Container(
        height: 100,
        child: Column(
          children: [
            Expanded(
              child: Container(
                alignment: Alignment.topLeft,
                child: Column(
                  children: [
                    Expanded(
                      child: ListTile(
                        title: Text(
                          widget.heading!,
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        subtitle: Text(widget.subtitle!),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(5),
                      child: Row(
                        children: [
                          Container(
                            child: Container(
                              padding: EdgeInsets.all(10),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Container(
                                    height: MediaQuery.of(context).size.height *
                                        0.03,
                                    width: MediaQuery.of(context).size.width *
                                        0.25,
                                    decoration: BoxDecoration(
                                        color: const Color(0xff241C57),
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                    child: TextButton(
                                      style: ButtonStyle(
                                        foregroundColor:
                                            MaterialStateProperty.all<Color>(
                                                Colors.white),
                                      ),
                                      onPressed: () {
                                        Get.to(FormFieldData());
                                      },
                                      child: const Text(
                                        "View Document",
                                        style: TextStyle(fontSize: 5),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Container(
                            child: Container(
                              padding: EdgeInsets.all(10),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Container(
                                    height: MediaQuery.of(context).size.height *
                                        0.03,
                                    width: MediaQuery.of(context).size.width *
                                        0.25,
                                    decoration: BoxDecoration(
                                        color: const Color(0xffFF0000),
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                    child: TextButton(
                                      style: ButtonStyle(
                                        foregroundColor:
                                            MaterialStateProperty.all<Color>(
                                                Colors.white),
                                      ),
                                      onPressed: () {
                                        Get.to(Cart());
                                      },
                                      child: const Text(
                                        "Add to cart",
                                        style: TextStyle(fontSize: 5),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 25,
                          ),
                          Text(
                            widget.qar!,
                            style: TextStyle(color: Color(0xff22A45D)),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              flex: 8,
            ),
          ],
        ),
      ),
      elevation: 8,
      margin: EdgeInsets.all(10),
    );
  }
}
