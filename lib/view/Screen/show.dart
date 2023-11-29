import 'package:flutter/material.dart';

class MyImagePage extends StatelessWidget {
  final int index;

  MyImagePage({required this.index});

  @override
  Widget build(BuildContext context) {
    late String img_src = "";
    if (index == 0) {
      img_src = "assets/images/b_market1.jpg";
    }
    return Scaffold(
      appBar: AppBar(
        title: Text('My Image Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset(
              img_src, // use the index parameter to customize the image asset path
              width: 200.0,
              height: 200.0,
            ),
            SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: () {
               
              },
              child: Text('My Button'),
            ),
          ],
        ),
      ),
    );
  }
}
