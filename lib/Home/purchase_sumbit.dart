import 'dart:math';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PurchaseSubmit extends StatefulWidget {
  const PurchaseSubmit({Key? key}) : super(key: key);

  @override
  State<PurchaseSubmit> createState() => _PurchaseSubmitState();
}

class _PurchaseSubmitState extends State<PurchaseSubmit> {
  @override
  final List dialog = [
    {'name': "dviuh", 'name': "fhkjlhdv"}
  ];
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
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          padding: EdgeInsets.all(30),
          child: Column(
            children: [
              Container(
                child: Column(
                  children: [
                    Container(
                      width: double.infinity,
                      height: 400,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        image: const DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(
                            'assets/images/form1.png',
                          ),
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(10),
                      width: double.infinity,
                      height: 400,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        image: const DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(
                            'assets/images/form2.png',
                          ),
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(10),
                      width: double.infinity,
                      height: 400,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        image: const DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(
                            'assets/images/form3.png',
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Container(
                    height: 30,
                    width: 150,
                    decoration: BoxDecoration(
                        border: Border.all(
                          color: Color(0xff241C57),
                          width: 2,
                        ),
                        borderRadius: BorderRadius.circular(10)),
                    child: GestureDetector(
                      onTap: () {
                        showModalBottomSheet(
                            context: context,
                            builder: (context) {
                              return Container(
                                padding: EdgeInsets.all(10),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: <Widget>[
                                    Text(
                                      "Add Signature",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 25),
                                    ),
                                    ListTile(
                                      leading: new Icon(Icons.camera_alt_sharp),
                                      title: new Text(
                                        'Take a Photo',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                      ),
                                      onTap: () {
                                        Navigator.pop(context);
                                      },
                                    ),
                                    ListTile(
                                      leading: new Icon(Icons.upload),
                                      title: new Text(
                                        'Upload from phone',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                      ),
                                      onTap: () {
                                        Navigator.pop(context);
                                      },
                                    ),
                                  ],
                                ),
                              );
                            });
                      },
                      child: Row(
                        children: [
                          Icon(
                            Icons.add_circle_sharp,
                            color: Color(0xff241C57),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            "Upload Signature",
                            style: TextStyle(color: Color(0xff241C57)),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 48,
                width: 225,
                decoration: BoxDecoration(
                  color: const Color(0xff241C57),
                ),
                child: InkWell(
                  child: TextButton(
                    style: ButtonStyle(
                      foregroundColor:
                          MaterialStateProperty.all<Color>(Colors.white),
                    ),
                    onPressed: () {
                      // OptionChoose(context);
                    },
                    child: const Text(
                      "Submit",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  OptionChoose(BuildContext context) {
    showDialog(
        context: context,
        builder: (builder) {
          return Container(
            child: Center(
              child: AlertDialog(
                content: SizedBox(
                  width: double.maxFinite,
                  child: ListView.separated(
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: EdgeInsets.all(0),
                        child: GestureDetector(
                          child: Center(
                            child: Column(
                              children: [
                                Container(
                                  height:
                                      MediaQuery.of(context).size.height * 0.05,
                                  child: Container(
                                    height: 48,
                                    width: 225,
                                    decoration: BoxDecoration(
                                      color: const Color(0xff241C57),
                                    ),
                                    child: TextButton(
                                      style: ButtonStyle(
                                        foregroundColor:
                                            MaterialStateProperty.all<Color>(
                                                Colors.white),
                                      ),
                                      onPressed: () {},
                                      child: const Text(
                                        "Check the form again",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Container(
                                  height:
                                      MediaQuery.of(context).size.height * 0.05,
                                  child: Container(
                                    height: 48,
                                    width: 225,
                                    decoration: BoxDecoration(
                                      color: const Color(0xff241C57),
                                    ),
                                    child: TextButton(
                                      style: ButtonStyle(
                                        foregroundColor:
                                            MaterialStateProperty.all<Color>(
                                                Colors.white),
                                      ),
                                      onPressed: () {},
                                      child: const Text(
                                        "Proceed",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          onTap: () {},
                        ),
                      );
                    },
                    separatorBuilder: (context, index) {
                      return const Divider(
                        color: Colors.blue,
                      );
                    },
                    itemCount: dialog.length,
                  ),
                ),
              ),
            ),
          );
        });
  }
}
