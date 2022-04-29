import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:ninety_two/Home/purchas_agreement.dart';
import 'package:ninety_two/api_provider/client.dart';
import 'package:ninety_two/api_provider/provider/auth_endpoint.dart';
import 'package:ninety_two/api_provider/provider/purchase_agreement_provider.dart';
import 'package:ninety_two/formfield/upload_sign_controller.dart';

class FormFieldData extends StatelessWidget {
  UploadSign uploadSign = Get.put(UploadSign());

  File? pickedFile;
  ImagePicker imagePicker = ImagePicker();

  TextEditingController agreementid = TextEditingController();
  TextEditingController name = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController address = TextEditingController();
  TextEditingController mobileno = TextEditingController();

  final agreementFormKey = GlobalKey<FormState>();
  FormFieldData({Key? key}) : super(key: key);

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
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Form(
              key: agreementFormKey,
              child: Column(
                children: [
                  Center(
                    child: Container(
                      decoration: BoxDecoration(
                          color: const Color(0xffF3F2F2),
                          borderRadius: BorderRadius.circular(10)),
                      child: TextFormField(
                        controller: agreementid,
                        validator: (val) {
                          if (val == "") {
                            return "Enter Valid Agreement Id";
                          }
                        },
                        decoration: InputDecoration(
                            hintText: "AgreementId",
                            border: InputBorder.none,
                            contentPadding: const EdgeInsets.all(5)),
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.all(0),
                    decoration: BoxDecoration(
                        color: const Color(0xffF3F2F2),
                        borderRadius: BorderRadius.circular(10)),
                    child: TextFormField(
                      controller: name,
                      validator: (val) {
                        if (val == "") {
                          return "Enter Valid Name";
                        }
                      },
                      decoration: InputDecoration(
                          hintText: "Name",
                          border: InputBorder.none,
                          contentPadding: const EdgeInsets.all(5)),
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
                      controller: address,
                      validator: (val) {
                        if (val == "") {
                          return "Enter Valid Address";
                        }
                      },
                      decoration: InputDecoration(
                          hintText: "Address",
                          border: InputBorder.none,
                          contentPadding: const EdgeInsets.all(5)),
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
                      controller: email,
                      validator: (val) {
                        if (!GetUtils.isEmail(val!)) {
                          return "Enter Valid Email";
                        }
                      },
                      decoration: InputDecoration(
                          hintText: "Email",
                          border: InputBorder.none,
                          contentPadding: const EdgeInsets.all(5)),
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
                      controller: mobileno,
                      keyboardType: TextInputType.phone,
                      validator: (val) {
                        if (!GetUtils.isPhoneNumber(val!)) {
                          return "Enter Valid Mobile Number";
                        }
                      },
                      decoration: InputDecoration(
                          hintText: "Mobile Number",
                          border: InputBorder.none,
                          contentPadding: const EdgeInsets.all(5)),
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Text("Upload Your Signature"),
                  const SizedBox(
                    height: 10,
                  ),
                  InkWell(
                    onTap: () {
                      showModalBottomSheet(
                          context: context,
                          builder: (context) => bottomsheet(context));
                    },
                    child: Obx(() => Container(
                          height: 100,
                          width: 200,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(color: Colors.black),
                              image: DecorationImage(
                                  image: uploadSign.isSign.value == true
                                      ? FileImage(
                                              File(uploadSign.signPath.value))
                                          as ImageProvider
                                      : AssetImage(
                                          "assets/images/uploadimage.png"))),
                        )),
                  ),
                  const SizedBox(
                    height: 15,
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
                        // Client register = Client();
                        // AuthEndPointProvider authPoint = AuthEndPointProvider(client: register.init());
                        // authPoint.signUp( fullname.text,  emailadd.text,  password.text);

                        if (agreementFormKey.currentState!.validate()) {
                          Client submitData = Client();

                          PuchaseAgreementP dataSubmit =
                              PuchaseAgreementP(client: submitData.init());

                          dataSubmit.submitForm(
                              aggrementId: agreementid.text,
                              name: name.text,
                              address: address.text,
                              email: email.text,
                              mobileNumber: mobileno.text,
                              imagePath: pickedFile!.path);
                        }
                      },
                      child: const Text(
                        "Add",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                  )
                ],
              )),
        ),
      ),
    );
  }

  Widget bottomsheet(context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
      width: double.infinity,
      height: size.height * 0.15,
      child: Column(children: [
        Text(
          "Upload Your Signature",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: 25,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            InkWell(
              onTap: () {
                takephoto(ImageSource.gallery);
              },
              child: Column(
                children: [
                  Icon(Icons.image),
                  Text(
                    "Gallary",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
            SizedBox(
              width: 50,
            ),
            InkWell(
              onTap: () async {
                takephoto(ImageSource.camera);

                print("camera");
              },
              child: Column(
                children: [
                  Icon(Icons.camera),
                  Text(
                    "Camera",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
          ],
        )
      ]),
    );
  }

  Future<void> takephoto(ImageSource source) async {
    final pickedImage =
        await imagePicker.pickImage(source: source, imageQuality: 10);
    pickedFile = File(pickedImage!.path);
    uploadSign.setSignature(pickedFile!.path);

    Get.back();
  }
}
