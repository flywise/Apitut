import 'package:get/get.dart';
import 'package:ninety_two/api_provider/client.dart';
import 'package:ninety_two/api_provider/provider/get_aggrement_provider.dart';
import 'package:ninety_two/model/get_aggrement.dart';

class HomeAggrementController extends GetxController with StateMixin<List<GetAgreementModel>>{
  String categoryId = "";
  callGetAggrementApi(){
    Client client = Client();
    AggrementProvider aggrementProvider =  AggrementProvider(client: client.init());
    aggrementProvider.getAggrementByCategory(id: categoryId).then((value) {
      change(value,status: RxStatus.success());
    },onError: (err){
      change(null,status: RxStatus.error(err.toString()));
    });
  }
}