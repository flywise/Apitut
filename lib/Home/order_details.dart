import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ninety_two/Home/invoce.dart';

class OrderDetails extends StatefulWidget {
  const OrderDetails({Key? key}) : super(key: key);

  @override
  State<OrderDetails> createState() => _OrderDetailsState();
}

class _OrderDetailsState extends State<OrderDetails> {
  int count = 0;
  bool checkboxvalue = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Color(0xff241C57),
        title: const Text(
          "Order Detail",
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
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Container(
                    height: 96,
                    width: 78,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4),
                      image: const DecorationImage(
                        image: AssetImage(
                          'assets/images/pdf.png',
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Purchase agreement\ndocument.pdf",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Row(
                        children: [
                          Text("QTR 32.8"),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            "(QTR 32.8)",
                            style: TextStyle(
                                decoration: TextDecoration.lineThrough),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 3,
                      ),
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
                                borderRadius: BorderRadius.circular(3)),
                            child: GestureDetector(
                              onTap: () {},
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    width: 3,
                                  ),
                                  Text(
                                    "+",
                                    style: TextStyle(color: Color(0xff241C57)),
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
                            height: 20,
                            width: 19,
                            decoration: BoxDecoration(
                                border: Border.all(
                                  color: Color(0xff241C57),
                                  width: 2,
                                ),
                                borderRadius: BorderRadius.circular(3)),
                            child: GestureDetector(
                              onTap: () {},
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    "-",
                                    style: TextStyle(color: Color(0xff241C57)),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Payment Method",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 19),
              ),
              Row(
                children: [
                  Container(
                    height: 96,
                    width: 78,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4),
                      image: const DecorationImage(
                        image: AssetImage(
                          'assets/images/sadan.png',
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Sadad Payment",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Row(
                        children: [
                          Text("Not Deafult"),
                        ],
                      ),
                      SizedBox(
                        height: 3,
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 80,
                  ),
                  Row(
                    children: [
                      Center(
                        child: Checkbox(
                          value: checkboxvalue,
                          onChanged: (bool? value) {
                            setState(() {});
                          },
                        ),
                      )
                    ],
                  ),
                ],
              ),
              Row(
                children: [
                  Container(
                    height: 96,
                    width: 78,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4),
                      image: const DecorationImage(
                        image: AssetImage(
                          'assets/images/apppay.png',
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Apple Pay",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Row(
                        children: [
                          Text("Not Deafult"),
                        ],
                      ),
                      SizedBox(
                        height: 3,
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 110,
                  ),
                  Row(
                    children: [
                      Center(
                        child: Checkbox(
                          value: checkboxvalue,
                          onChanged: (bool? value) {
                            setState(() {});
                          },
                        ),
                      )
                    ],
                  ),
                ],
              ),
              Text(
                "Lorem ipsum dolor sit amet, consectetuer\nadipiscing elit, sed diam nonna aliquam.",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.07,
                child: Container(
                  height: 48,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: const Color(0xffE0DBFF),
                  ),
                  child: Container(
                    margin: EdgeInsets.only(left: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Please choose one"),
                        Icon(Icons.arrow_drop_down)
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [Icon(Icons.lock), Text(" Secure\nConnection")],
              ),
              Text(
                "Order Details",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 19),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Container(
                    height: 56,
                    width: 48,
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
                    margin: EdgeInsets.only(left: 20),
                    child: Column(
                      children: [
                        Text(
                          "Purchase agreement\ndocument.pdf",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Container(
                margin: EdgeInsets.only(left: 70),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("MRP"),
                        Text(
                          "QAR 25.84",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 3,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Price Discount"),
                        Text(
                          "QAR 2.00",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 10),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 3,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Total Payment"),
                        Text(
                          "QAR 23.84",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Container(
                height: 2,
                decoration: BoxDecoration(color: Colors.grey),
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                "Summary",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Original price:",
                            style: TextStyle(fontSize: 20),
                          ),
                          Text(
                            "QAR 25.84",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 3,
                      ),
                    ]),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                height: 2,
                decoration: BoxDecoration(color: Colors.grey),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Total",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "QAR 25.84",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                  "Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonna aliquam."),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Column(
                    children: [
                      Text(
                        "Total",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                      Text(
                        "QAR 23.84",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                  SizedBox(
                    width: 20,
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
                            Get.to(Invoce());
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
              )
            ],
          ),
        ),
      ),
    );
  }
}
