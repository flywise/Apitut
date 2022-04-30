import 'dart:math';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ninety_two/Home/home_scren.dart';
import 'package:ninety_two/api_provider/client.dart';
import 'package:ninety_two/signup/signin.dart';
import 'package:ninety_two/signup/signin.dart';
import 'package:ninety_two/widget/botton_nav.dart';

import '../api_provider/provider/auth_endpoint.dart';

class CreateAccount extends StatefulWidget {
  const CreateAccount({Key? key}) : super(key: key);

  @override
  State<CreateAccount> createState() => _CreateAccountState();
}

class _CreateAccountState extends State<CreateAccount> {
  final signupFormKey = GlobalKey<FormState>();

  TextEditingController fullname = TextEditingController();
  TextEditingController emailadd = TextEditingController();
  TextEditingController password = TextEditingController();

  bool obscuretext = true;

  // void emailValidCon() {
  //   fullname.addListener(() {
  //     if (isEmail(fullname.text)) {
  //       emailFormKey.currentState!.validate();
  //     }
  //   });

  //   password.addListener(() {
  //     if (validatePassword(password.text)) {
  //       passwordFormKey.currentState!.validate();
  //     }
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        centerTitle: true,
        leading: InkWell(
          onTap: () {
            Get.back();
          },
          child: const Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
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
              const Text(
                "Create Account",
                style: TextStyle(color: Colors.black, fontSize: 34),
              ),
              const SizedBox(height: 10),
              const Text(
                "Enter your Name, Email and Password for  ",
                style: TextStyle(color: Colors.black, fontSize: 14),
              ),
              Row(
                children: [
                  const Text(
                    "sign up.",
                    style: TextStyle(color: Colors.black, fontSize: 14),
                  ),
                  SizedBox(height: 25),
                  InkWell(
                    onTap: () {
                      Get.to(SignIn());
                    },
                    child: const Text(
                      "   Already have account? ",
                      style: TextStyle(
                          color: Color(0xff241C57),
                          fontSize: 14,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Form(
                key: signupFormKey,
                child: Column(
                  children: [
                    Container(
                      margin: const EdgeInsets.all(0),
                      decoration: BoxDecoration(
                          color: const Color(0xffF3F2F2),
                          borderRadius: BorderRadius.circular(10)),
                      child: TextFormField(
                        controller: fullname,
                        validator: (val) {
                          if (val == "") {
                            return "Enter Valid Full  Name";
                          }
                        },
                        decoration: const InputDecoration(
                            hintText: "Full Name",
                            // suffixIcon: Padding(
                            //   padding: const EdgeInsets.all(10.0),
                            //   child: Image.asset(
                            //     'assets/images/done.png',
                            //   ),
                            // ),
                            border: InputBorder.none,
                            contentPadding: EdgeInsets.all(5)),
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Container(
                      margin: const EdgeInsets.all(0),
                      decoration: BoxDecoration(
                          color: const Color(0xffF3F2F2),
                          borderRadius: BorderRadius.circular(10)),
                      child: TextFormField(
                        controller: emailadd,
                        validator: (val) {
                          if (!GetUtils.isEmail(val!)) {
                            return "Enter Valid Email";
                          }
                        },
                        decoration: const InputDecoration(
                            hintText: "Email Address",
                            // suffixIcon: Padding(
                            //   padding: const EdgeInsets.all(10.0),
                            //   child: Image.asset(
                            //     'assets/images/done.png',
                            //   ),
                            // ),
                            border: InputBorder.none,
                            contentPadding: EdgeInsets.all(5)),
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: const Color(0xffF3F2F2),
                          borderRadius: BorderRadius.circular(10)),
                      child: TextFormField(
                        controller: password,
                        obscureText: obscuretext,
                        validator: (val) {
                          if (!GetUtils.isLengthGreaterThan(val, 6)) {
                            return "Enter Valid Password grater than 6  ";
                          }
                        },
                        decoration: InputDecoration(
                            hintText: "Password",
                            suffixIcon: InkWell(
                                onTap: () {
                                  setState(() {
                                    obscuretext = !obscuretext;
                                  });
                                },
                                child: Icon(obscuretext
                                    ? Icons.visibility
                                    : Icons.visibility_off)),
                            border: InputBorder.none,
                            contentPadding: EdgeInsets.all(5)),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
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
                  onPressed: () {
                    if (signupFormKey.currentState!.validate()) {
                      Client register = Client();
                      AuthEndPointProvider authPoint =
                          AuthEndPointProvider(client: register.init());
                      authPoint.signUp(
                          fullname.text, emailadd.text, password.text);
                    }

                    // setState(() {
                    //   GetUtils.isLengthGreaterThan(fullname.text, 6)
                    //       ? print('Name is valid')
                    //       : print('Name is invalid!!!');
                    //   GetUtils.isPhoneNumber(password.text)
                    //       ? print('Password')
                    //       : print('Enter Valid Password');

                    //   GetUtils.isEmail(emailadd.text)
                    //       ? print('Email is valid')
                    //       : print('Email is invalid!!!');
                    // });
                  },
                  child: const Text(
                    "SIGN UP",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Center(
                child: Text(
                  "By Signing up you agree to our Terms\n         Conditions & Privacy Policy.",
                  style: TextStyle(fontSize: 16),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Center(
                child: Text(
                  "Or",
                  style: TextStyle(fontSize: 16),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 48,
                width: 375,
                decoration: BoxDecoration(
                  color: Color(0xff395998),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(100),
                      margin: const EdgeInsets.fromLTRB(20, 10, 0, 10),
                      height: 30,
                      width: 25,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4),
                        color: Colors.white,
                        image: const DecorationImage(
                          image: AssetImage(
                            'assets/images/facebook.png',
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 40,
                    ),
                    TextButton(
                      style: ButtonStyle(
                        foregroundColor:
                            MaterialStateProperty.all<Color>(Colors.white),
                      ),
                      onPressed: () {},
                      child: const Text(
                        "LOGIN WITH APPLE ACCOUNT",
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                height: 48,
                width: 375,
                decoration: BoxDecoration(
                  color: const Color(0xff4285F4),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  children: [
                    Container(
                      margin: const EdgeInsets.fromLTRB(20, 10, 0, 10),
                      height: 30,
                      width: 25,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4),
                        color: Colors.white,
                        image: const DecorationImage(
                          image: AssetImage(
                            'assets/images/googlebox.png',
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 40,
                    ),
                    TextButton(
                      style: ButtonStyle(
                        foregroundColor:
                            MaterialStateProperty.all<Color>(Colors.white),
                      ),
                      onPressed: () {},
                      child: const Text(
                        "CONNECT WITH GOOGLE",
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  bool isEmail(String em) {
    return RegExp(
            r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
        .hasMatch(em);
  }

  bool validatePassword(String value) {
    return RegExp(
            r'^(?=.*?[a-z])(?=.*?[A-Z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$')
        .hasMatch(value);
  }
}
