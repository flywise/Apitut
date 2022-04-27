import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LiveChat extends StatefulWidget {
  const LiveChat({Key? key}) : super(key: key);

  @override
  State<LiveChat> createState() => _LiveChatState();
}

class _LiveChatState extends State<LiveChat> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Color(0xff241C57),
        title: const Text(
          "Live Chat",
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
        actions: [
          Container(
            margin: EdgeInsets.only(right: 40),
            width: 15,
            height: 15,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.green,
            ),
          ),
        ],
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Image.asset('assets/images/livechat.png'),
                    SizedBox(
                      width: 20,
                    ),
                    // Container(
                    //   height: 61,
                    //   width: 213,
                    //   decoration: BoxDecoration(
                    //       color: Colors.grey,
                    //       borderRadius: BorderRadius.circular(5)),
                    // )
                    Container(
                        height: 61,
                        width: 213,
                        color: Colors.grey,
                        child: TextFormField(
                            cursorHeight: 0.01,
                            decoration: InputDecoration(
                              border: InputBorder.none,
                            ),
                            style: TextStyle(
                                fontSize: 10.0,
                                height: 2.0,
                                color: Colors.black))),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Row(
                      children: [
                        Container(
                          height: 49,
                          width: 134,
                          decoration: BoxDecoration(
                              color: Colors.grey,
                              borderRadius: BorderRadius.circular(5)),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Image.asset('assets/images/livechat.png'),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
