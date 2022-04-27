import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HelpSupport extends StatefulWidget {
  const HelpSupport({Key? key}) : super(key: key);

  @override
  State<HelpSupport> createState() => _HelpSupportState();
}

class _HelpSupportState extends State<HelpSupport> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Color(0xff241C57),
        title: const Text(
          "Help & Support",
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
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Name",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            SizedBox(
              height: 10,
            ),
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Enter Your Name',
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Email",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            SizedBox(
              height: 10,
            ),
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Enter Your Name',
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Phone number",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            SizedBox(
              height: 10,
            ),
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Enter Your Name',
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Problem discription",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
                height: 150,
                width: double.infinity,
                child: TextField(
                    cursorHeight: 20,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                    ),
                    style: TextStyle(
                        fontSize: 10.0, height: 2.0, color: Colors.black))),
            Center(
              child: Container(
                height: MediaQuery.of(context).size.height * 0.07,
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
                    onPressed: () {},
                    child: const Text(
                      "Submit",
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
