import 'package:flutter/material.dart';
import 'package:flutter_web/Screens%20/%20Home/Components/app_bar.dart';

import 'Components/body.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    //이 사이즈는 전체 스크린의 height 와 width 받아와서 제공

    return Scaffold(
      body: Container(
        height: size.height,
        width: size.width,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/bg.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [CustomAppBar(), Spacer(), Body(), Spacer(flex: 2)],
        ),
      ),
    );
  }
}
