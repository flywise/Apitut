import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

class PhoneLogin extends StatefulWidget {
  const PhoneLogin({Key? key}) : super(key: key);

  @override
  State<PhoneLogin> createState() => _PhoneLoginState();
}

class _PhoneLoginState extends State<PhoneLogin> {
  String title = 'Country code picker';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        centerTitle: true,
        title: const Text(
          "Login",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        leading: InkWell(
          onTap: () {
            Get.back();
          },
          child: Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
        ),
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: const Text(
                "Get started with Ninetytwo \n     Generation Contract",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 25,
                    fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Center(
              child: const Text(
                "Enter your phone number to use foodly\n               and enjoy your food :)",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                ),
              ),
            ),
            SizedBox(
              height: 35,
            ),
            Text("PHONE NUMBER"),
            Row(
              children: [
                Container(
                  padding: const EdgeInsets.all(100),
                  margin: const EdgeInsets.fromLTRB(20, 10, 0, 10),
                  height: 30,
                  width: 25,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                    image: const DecorationImage(
                      image: AssetImage(
                        'assets/images/uk.png',
                      ),
                    ),
                  ),
                ),
                Container(
                  child: IconButton(
                    icon: Icon(Icons.arrow_drop_down),
                    color: Colors.black,
                    onPressed: () {
                      print("You Pressed the icon!");
                    },
                  ),
                ),
                Text("+1"),
                SizedBox(
                  width: 10,
                ),
                Container(
                    height: 50,
                    width: 190,
                    child: TextFormField(
                      keyboardType: TextInputType.number,
                      decoration: const InputDecoration(
                          border: UnderlineInputBorder(),
                          hintText: "(501)333-2982"),
                    )),
              ],
            ),
            SizedBox(
              height: 70,
            ),
            Container(
              height: 48,
              width: 375,
              decoration: BoxDecoration(
                  color: const Color(0xff241C57),
                  borderRadius: BorderRadius.circular(10)),
              child: TextButton(
                style: ButtonStyle(
                  foregroundColor:
                      MaterialStateProperty.all<Color>(Colors.white),
                ),
                onPressed: () {},
                child: const Text(
                  "SIGN UP",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
