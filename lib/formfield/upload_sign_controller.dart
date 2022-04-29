import 'package:get/get.dart';

class UploadSign extends GetxController{

  var isSign = false.obs;
  var signPath = "".obs;

  void setSignature(String path){
    signPath.value=path;
    isSign.value=true;
    
  }
}