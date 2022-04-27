import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ninety_two/Home/order_details.dart';

class Cart extends StatefulWidget {
  const Cart({Key? key}) : super(key: key);

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Color(0xff241C57),
        title: const Text(
          "Cart",
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
      body: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  child: Row(
                    children: [
                      Container(
                        margin: const EdgeInsets.fromLTRB(20, 0, 0, 10),
                        height: 90,
                        width: 70,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4),
                          image: const DecorationImage(
                            image: AssetImage(
                              'assets/images/pdf.png',
                            ),
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(10),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    "Purchase agreement\ndocument.pdf",
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(
                                    width: MediaQuery.of(context).size.width *
                                        0.05,
                                  ),
                                  Text("QTR 23.0")
                                ],
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              Column(
                                children: [
                                  Row(
                                    children: [
                                      Container(
                                        height: 20,
                                        width: 19,
                                        decoration: BoxDecoration(
                                            border: Border.all(
                                              color: Color(0xff241C57),
                                              width: 2,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(3)),
                                        child: GestureDetector(
                                          onTap: () {},
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              SizedBox(
                                                width: 5,
                                              ),
                                              Text(
                                                "-",
                                                style: TextStyle(
                                                    color: Color(0xff241C57)),
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Text("1"),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Container(
                                        padding: EdgeInsets.all(0),
                                        height: 20,
                                        width: 19,
                                        decoration: BoxDecoration(
                                            border: Border.all(
                                              color: Color(0xff241C57),
                                              width: 2,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(3)),
                                        child: GestureDetector(
                                          onTap: () {},
                                          child: Container(
                                            child: Row(
                                              children: [
                                                SizedBox(
                                                  width: 4,
                                                ),
                                                Center(
                                                  child: Text(
                                                    "+",
                                                    style: TextStyle(
                                                        color:
                                                            Color(0xff241C57)),
                                                  ),
                                                )
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Column(
                                children: [
                                  Row(
                                    children: [
                                      Row(
                                        children: [
                                          Text(
                                            "Total",
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold),
                                          ),
                                          SizedBox(
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                0.30,
                                          ),
                                          Text("QAR 23.84")
                                        ],
                                      )
                                    ],
                                  ),
                                ],
                              )
                            ]),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.20,
            ),
            Center(
              child: Container(
                height: MediaQuery.of(context).size.height * 0.05,
                child: Container(
                  height: 48,
                  width: 225,
                  decoration: BoxDecoration(
                    color: const Color(0xff241C57),
                  ),
                  child: TextButton(
                    style: ButtonStyle(
                      foregroundColor:
                          MaterialStateProperty.all<Color>(Colors.white),
                    ),
                    onPressed: () {
                      Get.to(OrderDetails());
                    },
                    child: const Text(
                      "Proceed",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
