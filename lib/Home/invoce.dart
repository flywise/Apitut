import 'package:flutter/material.dart';

class Invoce extends StatefulWidget {
  const Invoce({Key? key}) : super(key: key);

  @override
  State<Invoce> createState() => _InvoceState();
}

class _InvoceState extends State<Invoce> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Color(0xff241C57),
        automaticallyImplyLeading: false,
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Container(
              padding: EdgeInsets.all(10),
              height: 150,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Color(0xff241C57),
              ),
              child: Container(
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(
                  "assets/images/white.png",
                ))),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Center(
              child: Column(
                children: [
                  Image.asset("assets/images/dollor.png"),
                  Text(
                    "Your invoice payment has been ",
                    style: TextStyle(fontSize: 18),
                  ),
                  Text("successful", style: TextStyle(fontSize: 18)),
                  SizedBox(
                    height: 5,
                  ),
                  Text("Transaction No : #HG765475494WE",
                      style: TextStyle(fontSize: 16))
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              padding: EdgeInsets.only(left: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Invoice Information",
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Color(0xff241C57)),
                  ),
                  Container(
                    height: 3,
                    width: MediaQuery.of(context).size.width * 0.35,
                    decoration: BoxDecoration(color: Color(0xff241C57)),
                  ),
                  Container(
                    height: 1,
                    width: MediaQuery.of(context).size.width * 0.9,
                    decoration: BoxDecoration(color: Colors.grey),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.width * 0.04,
                  ),
                  Text(
                    "Invoice Number : #HG765475494WE",
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.width * 0.02,
                  ),
                  Text(
                    "Invoice Number : #HG765475494WE",
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.width * 0.02,
                  ),
                  Text(
                    "Payment Type : Apple Pay",
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    children: [
                      Text(
                        "Total Amount",
                        style: TextStyle(
                            color: Color(0xff241C57),
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "2,999",
                        style: TextStyle(
                            color: Color(0xff241C57),
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  )
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(20),
              child: Column(children: [
                Text(
                  "Your Order : ",
                  style: TextStyle(
                      color: Color(0xff241C57), fontWeight: FontWeight.bold),
                ),
              ]),
            ),
            Container(
              margin: EdgeInsets.only(left: 20),
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.fromLTRB(5, 0, 5, 0),
                    height: 28,
                    width: 310,
                    decoration: BoxDecoration(color: Colors.black),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            "Document name",
                            style: TextStyle(color: Colors.white),
                          ),
                          Text(
                            "Qty",
                            style: TextStyle(color: Colors.white),
                          ),
                          Text(
                            "Amount",
                            style: TextStyle(color: Colors.white),
                          )
                        ]),
                  )
                ],
              ),
            ),
            Column(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 25),
                  child: Row(
                    children: [
                      Container(
                        padding: EdgeInsets.all(10),
                        height: MediaQuery.of(context).size.width * 0.12,
                        width: 195,
                        decoration: BoxDecoration(
                          border: Border.all(),
                        ),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Legal Document Name"),
                              Text("1"),
                            ]),
                      ),
                      Container(
                        height: MediaQuery.of(context).size.width * 0.12,
                        width: 115,
                        decoration: BoxDecoration(
                          border: Border.all(),
                        ),
                        child: Row(children: [
                          SizedBox(
                            width: 30,
                          ),
                          Text("2,999.00"),
                        ]),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 25),
                  child: Row(
                    children: [
                      Container(
                        padding: EdgeInsets.all(10),
                        height: MediaQuery.of(context).size.width * 0.12,
                        width: 195,
                        decoration: BoxDecoration(
                          border: Border.all(),
                        ),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Total"),
                              Text("1"),
                            ]),
                      ),
                      Container(
                        height: MediaQuery.of(context).size.width * 0.12,
                        width: 115,
                        decoration: BoxDecoration(
                          border: Border.all(),
                        ),
                        child: Row(children: [
                          SizedBox(
                            width: 30,
                          ),
                          Text("2,999.00"),
                        ]),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ]),
        ),
      ),
    );
  }
}
