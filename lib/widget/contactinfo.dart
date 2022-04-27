import 'package:flutter/material.dart';

class contactinfo extends StatelessWidget {
  String? upper;
  String? lower;
  String? image;
  contactinfo({
    this.upper,
    this.lower,
    this.image,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Image.asset("$image"),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.04,
            ),
            Container(
              margin: EdgeInsets.only(top: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "$upper",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text("$lower"),
                ],
              ),
            )
          ],
        ),
        SizedBox(
          height: MediaQuery.of(context).size.width * 0.04,
        ),
        Container(
          height: 1,
          width: MediaQuery.of(context).size.width * 0.9,
          decoration: BoxDecoration(color: Colors.grey),
        ),
      ],
    );
  }
}
