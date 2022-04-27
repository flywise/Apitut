import 'package:flutter/material.dart';

class notificationwidget extends StatelessWidget {
  const notificationwidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      height: MediaQuery.of(context).size.height * 0.12,
      width: MediaQuery.of(context).size.width * 1.0,
      decoration: BoxDecoration(color: Colors.black12),
      child: Row(
        children: [
          Container(
            height: 43,
            width: 43,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(23),
                border: Border.all(
                  color: Color(0xff241C57),
                )),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.04,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Lorem ipsum dolor",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text(
                "Lorem ipsum dolor sit amet, consectetuer adipiscing elit,\nsed diam nonummy nibh euismod tincidunt ut  ",
                style: TextStyle(fontSize: 10),
              )
            ],
          )
        ],
      ),
    );
  }
}
