import 'package:caotgory/core/constant/imageasset.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../core/constant/color.dart';

class Coupon {
  final String title;
  final String code;

  Coupon({required this.title, required this.code});
}

class CouponPage extends StatelessWidget {
  final int index;
  var _Icon = Icon(Icons.star_border);
  late List<Coupon> couponList;

  List<Coupon> couponmarket_1 = [
    Coupon(title: 'Coupon1', code: "dff20"),
    Coupon(title: 'Coupon 2', code: "htt31"),
  ];
  List<Coupon> couponmarket_2 = [
    Coupon(title: 'Coupon1', code: "xuj567"),
    Coupon(title: 'Coupon 2', code: "esr23"),
  ];
  List<Coupon> couponmarket_3 = [
    Coupon(title: 'Coupon1', code: "nv350"),
    Coupon(title: 'Coupon 2', code: "xttlk7"),
  ];

  List<Coupon> couponmakeup_1 = [
    Coupon(title: 'Coupon1', code: "df345"),
    Coupon(title: 'Coupon 2', code: "rtui32"),
  ];
  List<Coupon> couponmakeup_2 = [
    Coupon(title: 'Coupon1', code: "dffdf"),
    Coupon(title: 'Coupon 2', code: "dffdf"),
  ];

  List<Coupon> coupon_g1 = [
    Coupon(title: 'Coupon1', code: "dffdf"),
    Coupon(title: 'Coupon 2', code: "dffdf"),
  ];
  List<Coupon> coupon_g2 = [
    Coupon(title: 'Coupon1', code: "dffdf"),
    Coupon(title: 'Coupon 2', code: "dffdf"),
  ];
  List<Coupon> coupon_g3 = [
    Coupon(title: 'Coupon1', code: "dffdf"),
    Coupon(title: 'Coupon 2', code: "dffdf"),
  ];

  List<Coupon> coupon_ph1 = [
    Coupon(title: 'Coupon1', code: "dffdf"),
    Coupon(title: 'Coupon 2', code: "dffdf"),
  ];
  List<Coupon> coupon_ph2 = [
    Coupon(title: 'Coupon1', code: "dffdf"),
    Coupon(title: 'Coupon 2', code: "dffdf"),
  ];
  List<Coupon> coupon_ph3 = [
    Coupon(title: 'Coupon1', code: "dffdf"),
    Coupon(title: 'Coupon 2', code: "dffdf"),
  ];
  List<Coupon> coupon_r1 = [
    Coupon(title: 'Coupon1', code: "dffdf"),
    Coupon(title: 'Coupon 2', code: "dffdf"),
  ];
  List<Coupon> coupon_r2 = [
    Coupon(title: 'Coupon1', code: "dffdf"),
    Coupon(title: 'Coupon 2', code: "dffdf"),
  ];
  List<Coupon> coupon_r3 = [
    Coupon(title: 'Coupon1', code: "dffdf"),
    Coupon(title: 'Coupon 2', code: "dffdf"),
  ];

  List<Coupon> coupon_coffe1 = [
    Coupon(title: 'Coupon1', code: "dffdf"),
    Coupon(title: 'Coupon 2', code: "dffdf"),
  ];
  List<Coupon> coupon_coffe2 = [
    Coupon(title: 'Coupon1', code: "dffdf"),
    Coupon(title: 'Coupon 2', code: "dffdf"),
  ];
  List<Coupon> coupon_coffe3 = [
    Coupon(title: 'coof', code: "dffdf"),
    Coupon(title: 'Coupon 2', code: "dffdf"),
  ];

  List<Coupon> coupon_m1 = [
    Coupon(title: 'Coupon1', code: "dffdf"),
    Coupon(title: 'Coupon 2', code: "dffdf"),
  ];
  List<Coupon> coupon_m2 = [
    Coupon(title: 'Coupon1', code: "dffdf"),
    Coupon(title: 'Coupon 2', code: "dffdf"),
  ];
  List<Coupon> coupon_m3 = [
    Coupon(title: 'Coupon1', code: "dffdf"),
    Coupon(title: 'Coupon 2', code: "dffdf"),
  ];

  var title;
  bool b_flag = false;
  CouponPage({required this.index, required this.title});

  @override
  Widget build(BuildContext context) {
    if (index == 0) {
      couponList = couponmarket_1;
    } else if (index == 1) {
      couponList = couponmarket_2;
    } else if (index == 2) {
      couponList = couponmarket_3;
    } else if (index == 3) {
      couponList = couponmakeup_1;
    } else if (index == 4) {
      couponList = couponmakeup_2;
    } else if (index == 6) {
      couponList = coupon_g1;
    } else if (index == 7) {
      couponList = coupon_g2;
      ;
    } else if (index == 8) {
      couponList = coupon_g3;
    } else if (index == 9) {
      couponList = coupon_ph1;
    } else if (index == 10) {
      couponList = coupon_ph2;
    } else if (index == 11) {
      couponList = coupon_ph3;
    } else if (index == 12) {
      couponList = coupon_r1;
    } else if (index == 13) {
      couponList = coupon_r1;
    } else if (index == 14) {
      couponList = coupon_r3;
      ;
    } else if (index == 15) {
      couponList = coupon_coffe1;
    } else if (index == 16) {
      couponList = coupon_coffe2;
    } else if (index == 17) {
      couponList = coupon_coffe3;
    } else if (index == 18) {
      couponList = coupon_m1;
    } else if (index == 19) {
      couponList = coupon_m2;
    } else if (index == 20) {
      couponList = coupon_m3;
    }

    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      appBar: AppBar(
        backgroundColor: AppColor.orange,
        title: Text(title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: GridView.count(
          crossAxisCount: 1,
          mainAxisSpacing: 10.0,
          crossAxisSpacing: 16.0,
          children: List.generate(couponList.length, (index) {
            return Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10.0),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.3),
                    spreadRadius: 2,
                    blurRadius: 5,
                    offset: Offset(0, 3),
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Container(
                    padding: EdgeInsets.all(8.0),
                    decoration: BoxDecoration(
                      color: AppColor.orange,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10.0),
                        topRight: Radius.circular(10.0),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          couponList[index].title,
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 18.0,
                          ),
                        ),
                        IconButton(
                          icon: _Icon,
                          color: Color.fromRGBO(255, 255, 255, 1),
                          onPressed: () {},
                        ),
                        IconButton(
                          icon: Icon(Icons.share),
                          color: Colors.white,
                          onPressed: () {},
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "50%",
                            style: TextStyle(
                              color: Colors.red,
                              fontWeight: FontWeight.bold,
                              fontSize: 32.0,
                            ),
                          ),
                          const SizedBox(height: 16.0),
                          Text(
                            couponList[index].code,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 32.0,
                            ),
                          ),
                          SizedBox(height: 16.0),
                          ElevatedButton(
                            onPressed: () {},
                            child: Text('Copy Code'),
                            style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.all<Color>(Colors.red),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            );
          }),
        ),
      ),
    );
  }
}
