import 'package:flutter/material.dart';
import 'package:flutter_web/Components/default_button.dart';

import 'menu_item.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20),
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(46),
        boxShadow: [
          BoxShadow(
            offset: Offset(0, -2),
            blurRadius: 30,
            color: Colors.black.withOpacity(0.16),
          ),
        ],
      ),
      child: Row(
        children: [
          Image(
            image: AssetImage("assets/images/logo.png"),
            height: 25,
            alignment: Alignment.topCenter,
          ),
          SizedBox(width: 5),
          Text(
            "Foodi".toUpperCase(),
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),
          Spacer(),
          MenuItem(
            title: "Home",
            press: () {},
          ),
          MenuItem(
            title: "About",
            press: () {},
          ),
          MenuItem(
            title: "Pricing",
            press: () {},
          ),
          MenuItem(
            title: "Contact",
            press: () {},
          ),
          MenuItem(
            title: "Login",
            press: () {
              print('Login');
            },
          ),
          DefaultButton(
            text: "Get Started",
            press: () {
              print("Get Started");
            },
          ),
        ],
      ),
    );
  }
}
