

import 'package:get/get.dart';
import 'package:ninety_two/api_provider/client.dart';
import 'package:ninety_two/api_provider/provider/contact_us_provider.dart';
import 'package:ninety_two/model/contact_model.dart';

class ContactUsController extends GetxController with StateMixin<ContactModel>{

  callGetContactApi(){
    Client client = Client();
    ContactUsProvider contactUsProvider = ContactUsProvider(client: client.init());
    try {
      contactUsProvider.getContactInfo().then((value) {
         change(value,status: RxStatus.success());
       }
      ,onError: (err){
        change(null,status: RxStatus.error(err));
      });
    }  catch (e) {
      change(null,status: RxStatus.error(e.toString()));
    }
  }

  @override
  void onInit() {
    callGetContactApi();
    super.onInit();
  }
}