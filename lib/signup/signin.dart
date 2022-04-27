import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ninety_two/api_provider/client.dart';
import 'package:ninety_two/api_provider/provider/auth_endpoint.dart';
import 'package:ninety_two/signup/create_account.dart';
import 'package:ninety_two/signup/forget_pass.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  final loginFormKey = GlobalKey<FormState>();
  final emailFormKey = GlobalKey<FormState>();


  TextEditingController _email = TextEditingController();
  TextEditingController _pass = TextEditingController();

  bool obscuretext = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        centerTitle: true,
        title: const Text(
          "Sign in",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
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
      body: Container(
        padding: const EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Welcome to",
              style: TextStyle(color: Colors.black, fontSize: 34),
            ),
            const Text(
              "Enter your Phone number or Email for   ",
              style: TextStyle(color: Colors.black, fontSize: 14),
            ),
            Row(
              children: [
                  const Text(
                  "sign in or, ",
                  style: TextStyle(color: Colors.black, fontSize: 14),
                ),
                SizedBox(height: 20),
                InkWell(
                  onTap: () {
                    Get.to(CreateAccount());
                  },
                  child: const Text(
                    "Create new account. ",
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
                key: loginFormKey,
                child: Column(
                children: [
                 Form(
                  key: emailFormKey,
                  child: Container(
                    margin: const EdgeInsets.all(0),
                    decoration: BoxDecoration(
                        color: const Color(0xffF3F2F2),
                        borderRadius: BorderRadius.circular(10)),
                    child: TextFormField(
                      controller: _email,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Field can\'t be empty';
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                          hintText: "Email",
                          suffixIcon: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Image.asset(
                              'assets/images/phone.png',
                            ),
                          ),
                          border: InputBorder.none,
                          contentPadding: const EdgeInsets.all(5)),
                    ),
                  ),
                ),
                  const SizedBox(
                    height: 15,
                  ),

                //Password
                Container(
                  margin: const EdgeInsets.all(0),
                  decoration: BoxDecoration(
                      color: const Color(0xffF3F2F2),
                      borderRadius: BorderRadius.circular(10)),
                  child: TextFormField(
                    controller: _pass,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Field can\'t be empty';
                      }
                      return null;
                    },
                    obscureText: true,
                    decoration: InputDecoration(
                        hintText: "Password",
                        suffixIcon: GestureDetector(
                            onTap: (){
                              setState(() {
                                obscuretext=!obscuretext;
                              });
                            },
                            child: Icon(
                                obscuretext? Icons.visibility_off:Icons.visibility
                            )),
                        border: InputBorder.none,
                        contentPadding: const EdgeInsets.all(5)),
                  ),
                ),
              ],
            )),
            const SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                InkWell(
                  onTap: () {
                    Get.to(()=> ForgetPassword());

                  },
                  child: const Text(
                    "Forget Password?",
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 20,
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

                onPressed: ()   {
                  Client client = Client();
                  AuthEndPointProvider authEndPointProvider = AuthEndPointProvider(client: client.init());
                  authEndPointProvider.signIn(_email.text, _pass.text);
                },
                child: const Text("SIGN IN"),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            const Center(
              child: Text(
                "Or",
                style: TextStyle(fontSize: 16),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Container(
              height: 48,
              width: 375,
              decoration: BoxDecoration(
                color: Colors.black,
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
                          'assets/images/Group.png',
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
              height: 25,
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
    );
  }
}
