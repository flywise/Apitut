
 import 'package:get/get.dart';
import 'package:ninety_two/api_provider/client.dart';
import 'package:ninety_two/api_provider/provider/category_provider.dart';
import 'package:ninety_two/model/category_model.dart';

class CategoryController extends GetxController with StateMixin<List<CategoryModel>>{

  List<Img> img = List<Img>.empty().obs;
  late Rx<CategoryModel> title;
  late Rx<CategoryModel> subtitle;


  callGetCategoryApi(){
    Client cclient = Client();
    CategoryProvider categoryProvider = CategoryProvider(client : cclient.init());
    try {
      categoryProvider.getCategory().then((value) {
        if(value.isNotEmpty){
          change(value,status: RxStatus.success());
        } else{
          change(null,status: RxStatus.empty());
        }
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
    callGetCategoryApi();
    super.onInit();
  }

}