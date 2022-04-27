import 'package:flutter/material.dart';
import 'package:ninety_two/Home/home_aggrement_module/home_aggrement.dart';
import 'package:ninety_two/Home/purchase_sumbit.dart';
import 'package:ninety_two/widget/botton_nav.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: const Color(0xff241C57),
        automaticallyImplyLeading: false,
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.all(10),
                height: 150,
                width: double.infinity,
                decoration: const BoxDecoration(
                  color: Color(0xff241C57),
                ),
                child: Container(
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(
                    "assets/images/white.png",
                  ))),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      child: const Text(
                          "Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi..more."),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      "How to make Contract /Agreement",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.only(left: 20),
                child: Row(
                  children: [
                    Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        color: const Color(0xff241C57),
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            "Step -1",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Text("Lorem ipsum dolor")
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 6,
              ),
              Container(
                padding: const EdgeInsets.only(left: 20),
                child: Row(
                  children: [
                    Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        color: const Color(0xff241C57),
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            "Step -2",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Text("Lorem ipsum dolor")
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.only(left: 20),
                child: Row(
                  children: [
                    Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        color: const Color(0xff241C57),
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            "Step -3",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Text("Lorem ipsum dolor")
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.only(left: 20),
                child: Row(
                  children: [
                    Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        color: const Color(0xff241C57),
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            "Step -4",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Text("Lorem ipsum dolor")
                        ],
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
}
