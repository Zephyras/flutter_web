import 'package:flutter/material.dart';

import '../constant.dart';

class DefaultButton extends StatelessWidget {
  final String? text;
  final Function press;
  const DefaultButton({Key? key, this.text, required this.press})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(25),
      child: TextButton(
        style: TextButton.styleFrom(
          padding: EdgeInsets.symmetric(horizontal: 35, vertical: 25),
          backgroundColor: KPrimaryColor,
          // shape: RoundedRectangleBorder(
          //   borderRadius: BorderRadius.all(
          //     Radius.circular(15),
          //   ),
          // ),
        ),
        onPressed: () {},
        child: Text(
          text!.toUpperCase(),
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
