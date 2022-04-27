import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../widget/Notification_widget.dart';

class NotificationPage extends StatefulWidget {
  const NotificationPage({Key? key}) : super(key: key);

  @override
  State<NotificationPage> createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Color(0xff241C57),
        title: const Text(
          "Notifications",
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
        scrollDirection: Axis.vertical,
        child: Container(
          margin: EdgeInsets.only(top: 30),
          child: Column(
            children: [
              notificationwidget(),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              notificationwidget(),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              notificationwidget(),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              notificationwidget(),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              notificationwidget(),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              notificationwidget(),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              notificationwidget(),
            ],
          ),
        ),
      ),
    );
  }
}
