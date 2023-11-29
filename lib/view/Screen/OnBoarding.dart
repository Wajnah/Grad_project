// ignore: unused_import
import 'package:flutter/material.dart';

class OnBoarding extends StatelessWidget {
  const OnBoarding({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var onBoardingList;
    return Scaffold(
        body: Container(
      padding: const EdgeInsets.all(15),
      child: ListView(children: [
        Image.asset("onBoardingList"),
        Text(onBoardingList.title!)
      ]),
    ));
  }
}
