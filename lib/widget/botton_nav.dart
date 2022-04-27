import 'package:flutter/material.dart';
import 'package:ninety_two/Home/category.dart';

import 'package:ninety_two/Home/contact_module/contact.dart';
import 'package:ninety_two/Home/home_scren.dart';

import 'package:ninety_two/Home/setting.dart';

class Bottom extends StatefulWidget {
  int? index;
  Bottom({Key? key, this.index}) : super(key: key);

  @override
  State<Bottom> createState() => _BottomState();
}

class _BottomState extends State<Bottom> {
  int _currentIndex = 0;
  List pageData = [HomeScreen(), Category(), ContactUs(), Setting()];
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: pageData[_currentIndex]),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        type: BottomNavigationBarType.fixed,
        iconSize: 30,
        selectedFontSize: 15,
        unselectedFontSize: 13,
        selectedItemColor: Color(0xff241C57),
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
              ),
              label: "Home",
              backgroundColor: Color(0xff868686)),
          BottomNavigationBarItem(
              icon: InkWell(
                child: Icon(
                  Icons.document_scanner_sharp,
                ),
              ),
              label: "Document",
              backgroundColor: Colors.white),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.phone_outlined,
              ),
              label: "contact",
              backgroundColor: Colors.white),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.settings,
              ),
              label: 'setting',
              backgroundColor: Colors.white),
        ],
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}
