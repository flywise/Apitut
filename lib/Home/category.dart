import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ninety_two/Home/home_aggrement_module/controller/home_aggrement_controller.dart';
import 'package:ninety_two/Home/home_aggrement_module/home_aggrement.dart';
import 'package:ninety_two/api_provider/client.dart';
import 'package:ninety_two/api_provider/provider/category_provider.dart';
import 'package:ninety_two/controllers/category_controller.dart';

class Category extends GetView<CategoryController> {
   CategoryController categoryController = Get.put(CategoryController());
  
  HomeAggrementController homeAggrementController = Get.put(HomeAggrementController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: const Color(0xff241C57),
        automaticallyImplyLeading: false,
      ),
      body: SafeArea(
        child: Scaffold(
            body: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(10),
              height: 150,
              width: double.infinity,
              decoration: const BoxDecoration(
                color: const Color(0xff241C57),
              ),
              child: Container(
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(
                  "assets/images/white.png",
                ))),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            // Align(
            //   alignment: Alignment.centerRight,
            //   child: Container(
            //     height: 35,
            //     width: 110,
            //     alignment: Alignment.center,
            //     decoration: BoxDecoration(
            //         color: const Color(0xff241C57),
            //         borderRadius: BorderRadius.circular(10)),
            //     child: Text(
            //       "Select Language",
            //       style: TextStyle(
            //           fontSize: 10,
            //           color: Colors.white,
            //           fontWeight: FontWeight.bold),
            //     ),
            //   ),
            // ),
            categoryController.obx(
                (catstate) => Expanded(
                      child: ListView.builder(
                        scrollDirection: Axis.vertical,
                        shrinkWrap: true,
                        // physics: BouncingScrollPhysics(),
                        itemCount: catstate!.length,
                        itemBuilder: (context, index) {
                          return Column(
                            children: [
                              InkWell(
                                onTap: () {
                                  homeAggrementController.categoryId = catstate[index].id!;
                                  homeAggrementController.callGetAggrementApi();
                                  Get.to(HomeAgreement());
                                },
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: ListTile(
                                    title: Text(catstate[index].title!),
                                    leading: Container(
                                      height: 100,
                                      child: Image.network(
                                        catstate[index].img!.url!,
                                        fit: BoxFit.cover,
                                        errorBuilder: (context, _, __) =>
                                            Container(
                                          height: 100,
                                          color: Colors.grey.shade200,
                                          child: const Text("No Image"),
                                        ),
                                      ),
                                    ),
                                    subtitle: Text(catstate[index].descrption!),
                                  ),
                                ),
                              ),
                            ],
                          );
                        },
                      ),
                    ),
                onError: (err) => Center(child: Text(err!)),
                onEmpty: Center(
                  child: Text("No Data"),
                )),
          ],
        )

            //     ListView(
            //   physics: AlwaysScrollableScrollPhysics(),
            //   shrinkWrap: true,
            //
            //   children: [
            //     Column(
            //       children: [
            //         Container(
            //           padding: const EdgeInsets.all(10),
            //           height: 150,
            //           width: double.infinity,
            //           decoration: const BoxDecoration(
            //             color: const Color(0xff241C57),
            //           ),
            //           child: Container(
            //             decoration: const BoxDecoration(
            //                 image:   DecorationImage(
            //                     image: AssetImage(
            //               "assets/images/white.png",
            //             ))),
            //           ),
            //         ),
            //         const SizedBox(
            //           height: 10,
            //         ),
            //         Container(
            //           child: Container(
            //             padding: const EdgeInsets.all(10),
            //             child: Row(
            //               mainAxisAlignment: MainAxisAlignment.end,
            //               children: [
            //                 Container(
            //                   height: 20,
            //                   width: 88,
            //                   decoration: BoxDecoration(
            //                       color: const Color(0xff241C57),
            //                       borderRadius: BorderRadius.circular(10)),
            //                   child: TextButton(
            //                     style: ButtonStyle(
            //                       foregroundColor: MaterialStateProperty.all<Color>(
            //                           Colors.white),
            //                     ),
            //                     onPressed: () {},
            //                     child: const Text(
            //                       "Select Language",
            //                       style: TextStyle(fontSize: 4),
            //                     ),
            //                   ),
            //                 ),
            //               ],
            //             ),
            //           ),
            //         ),
            //         // Card(
            //         //   shape: RoundedRectangleBorder(
            //         //     side: const BorderSide(color: Colors.black45, width: 1),
            //         //     borderRadius: BorderRadius.circular(15),
            //         //   ),
            //         //   child: InkWell(
            //         //     onTap: () {
            //         //       Navigator.push(
            //         //           context,
            //         //           MaterialPageRoute(
            //         //               builder: (context) => const HomeAgreement()));
            //         //     },
            //         //     child: Container(
            //         //       height: 100,
            //         //       child: Row(
            //         //         children: [
            //         //           Expanded(
            //         //             child: Image.asset("assets/images/home.png"),
            //         //             flex: 2,
            //         //           ),
            //         //           Expanded(
            //         //             child: Container(
            //         //               alignment: Alignment.topLeft,
            //         //               child: Column(
            //         //                 children: const [
            //         //                   Expanded(
            //         //                     child: ListTile(
            //         //                       title: Text(
            //         //                         'catstate.title' ,
            //         //                         style: TextStyle(
            //         //                             fontWeight: FontWeight.bold),
            //         //                       ),
            //         //                       subtitle: Text('catstate.subTitle'),
            //         //
            //         //                     ),
            //         //                   ),
            //         //                 ],
            //         //               ),
            //         //             ),
            //         //             flex: 8,
            //         //           ),
            //         //         ],
            //         //       ),
            //         //     ),
            //         //   ),
            //         //   elevation: 8,
            //         //   margin: const EdgeInsets.all(10),
            //         // ),
            //         // Card(
            //         //   shape: RoundedRectangleBorder(
            //         //     side: const BorderSide(color: Colors.black45, width: 1),
            //         //     borderRadius: BorderRadius.circular(15),
            //         //   ),
            //         //   child: Container(
            //         //     height: 100,
            //         //     child: Row(
            //         //       children: [
            //         //         Expanded(
            //         //           child: Image.asset("assets/images/hospital.png"),
            //         //           flex: 2,
            //         //         ),
            //         //         Expanded(
            //         //           child: Container(
            //         //             alignment: Alignment.topLeft,
            //         //             child: Column(
            //         //               children: [
            //         //                 const Expanded(
            //         //                   child: const ListTile(
            //         //                     title: const Text(
            //         //                       "Home Agreement",
            //         //                       style: const TextStyle(
            //         //                           fontWeight: FontWeight.bold),
            //         //                     ),
            //         //                     subtitle: Text(
            //         //                         "Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy "),
            //         //                   ),
            //         //                 ),
            //         //               ],
            //         //             ),
            //         //           ),
            //         //           flex: 8,
            //         //         ),
            //         //       ],
            //         //     ),
            //         //   ),
            //         //   elevation: 8,
            //         //   margin: const EdgeInsets.all(10),
            //         // ),
            //         // Card(
            //         //   shape: RoundedRectangleBorder(
            //         //     side: const BorderSide(color: Colors.black45, width: 1),
            //         //     borderRadius: BorderRadius.circular(15),
            //         //   ),
            //         //   child: Container(
            //         //     height: 100,
            //         //     child: Row(
            //         //       children: [
            //         //         Expanded(
            //         //           child: Image.asset("assets/images/school.png"),
            //         //           flex: 2,
            //         //         ),
            //         //         Expanded(
            //         //           child: Container(
            //         //             alignment: Alignment.topLeft,
            //         //             child: Column(
            //         //               children: [
            //         //                 const Expanded(
            //         //                   child: const ListTile(
            //         //                     title: Text(
            //         //                       "Home Agreement",
            //         //                       style: const TextStyle(
            //         //                           fontWeight: FontWeight.bold),
            //         //                     ),
            //         //                     subtitle: Text(
            //         //                         "Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy "),
            //         //                   ),
            //         //                 ),
            //         //               ],
            //         //             ),
            //         //           ),
            //         //           flex: 8,
            //         //         ),
            //         //       ],
            //         //     ),
            //         //   ),
            //         //   elevation: 8,
            //         //   margin: const EdgeInsets.all(10),
            //         // ),
            //         // Card(
            //         //   shape: RoundedRectangleBorder(
            //         //     side: const BorderSide(color: Colors.black45, width: 1),
            //         //     borderRadius: BorderRadius.circular(15),
            //         //   ),
            //         //   child: Container(
            //         //     height: 100,
            //         //     child: Row(
            //         //       children: [
            //         //         Expanded(
            //         //           child: Image.asset("assets/images/wight.png"),
            //         //           flex: 2,
            //         //         ),
            //         //         Expanded(
            //         //           child: Container(
            //         //             alignment: Alignment.topLeft,
            //         //             child: Column(
            //         //               children: [
            //         //                 const Expanded(
            //         //                   child: const ListTile(
            //         //                     title: Text(
            //         //                       "Home Agreement",
            //         //                       style: const TextStyle(
            //         //                           fontWeight: FontWeight.bold),
            //         //                     ),
            //         //                     subtitle: Text(
            //         //                         "Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy "),
            //         //                   ),
            //         //                 ),
            //         //               ],
            //         //             ),
            //         //           ),
            //         //           flex: 8,
            //         //         ),
            //         //       ],
            //         //     ),
            //         //   ),
            //         //   elevation: 8,
            //         //   margin: const EdgeInsets.all(10),
            //         // ),
            //
            //       ],
            //     ),
            //   ],
            // ),
            ),
      ),
    );
  }
}
