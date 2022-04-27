import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AboutUs extends StatefulWidget {
  const AboutUs({Key? key}) : super(key: key);

  @override
  State<AboutUs> createState() => _AboutUsState();
}

class _AboutUsState extends State<AboutUs> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Color(0xff241C57),
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
      body: Container(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(10),
              height: 150,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Color(0xff241C57),
              ),
              child: Container(
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(
                  "assets/images/white.png",
                ))),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "About Us",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
            ),
            Container(
              padding: EdgeInsets.all(20),
              child: Column(
                children: [
                  Text(
                      "Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi."),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                      "Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat.")
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
