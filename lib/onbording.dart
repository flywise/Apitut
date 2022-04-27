import 'package:flutter/material.dart';
import 'package:ninety_two/model/intro_model.dart';
import 'package:ninety_two/signup/create_account.dart';
import 'package:ninety_two/signup/signin.dart';

class Onbording extends StatefulWidget {
  const Onbording({Key? key}) : super(key: key);

  @override
  State<Onbording> createState() => _OnbordingState();
}

class _OnbordingState extends State<Onbording> {
  int currtpage = 0;
  PageController? _controller;

  @override
  void initState() {
    _controller = PageController(initialPage: 0);

    super.initState();
  }

  @override
  void dispose() {
    _controller!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: PageView.builder(
              controller: _controller,
              itemCount: contents.length,
              onPageChanged: (int index) {
                setState(() {
                  currtpage = index;
                });
              },
              itemBuilder: (_, i) {
                return Container(
                  child: Padding(
                    padding: const EdgeInsets.all(40),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(contents[i].image!),
                        Text(
                          contents[i].title!,
                          style: const TextStyle(
                              color: Color(0xff010F07),
                              fontWeight: FontWeight.bold,
                              fontSize: 25),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          contents[i].discription!,
                          textAlign: TextAlign.center,
                          style:
                              TextStyle(color: Color(0xff868686), fontSize: 16),
                        )
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
          Container(
            child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(
                    contents.length, (index) => buildDot(index, context))),
          ),
          Container(
            height: 48,
            width: 335,
            margin: const EdgeInsets.all(40),
            decoration: BoxDecoration(
                color: const Color(0xff241C57),
                borderRadius: BorderRadius.circular(10)),
            child: TextButton(
              style: ButtonStyle(
                foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
              ),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => CreateAccount()));
              },
              child: Text(
                currtpage == contents.length - 1 ? 'Get start' : "Continue",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Container buildDot(int index, BuildContext context) {
    return Container(
      height: 10,
      width: currtpage == index ? 25 : 10,
      margin: const EdgeInsets.only(right: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: currtpage == index ? Color(0xff241C57) : Color(0xff979797),
      ),
    );
  }
}
