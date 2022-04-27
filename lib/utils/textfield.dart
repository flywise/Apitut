import 'package:flutter/material.dart';

class NTextField extends StatelessWidget {
  // const NTextField({Key? key}) : super(key: key);

  String? hintText;
  NTextField({this.hintText});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Color(0xffF3F2F2), borderRadius: BorderRadius.circular(10)),
      child: TextFormField(
        decoration: InputDecoration(
            labelStyle: const TextStyle(
              color: Colors.black,
            ),
            focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.black),
            ),
            hintText: hintText ?? 'hint Text..',
            suffixIcon: Padding(
              padding: const EdgeInsets.all(10.0),
            ),
            contentPadding: EdgeInsets.all(5)),
      ),
    );
  }
}
