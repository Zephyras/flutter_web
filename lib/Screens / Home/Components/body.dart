import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter_web/constant.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Buger".toUpperCase(),
            style: Theme.of(context).textTheme.headline1!.copyWith(
                  color: KTextcolor,
                  fontWeight: FontWeight.bold,
                ),
          ),
          Text(
            'consectetur adipiscing elit duis tristique\n sollicitudin nibh sit amet commodo nulla\n facilisi nullam vehicula ipsum a \narcu cursus vitae congue',
            style: TextStyle(fontSize: 21, color: KTextcolor.withOpacity(0.34)),
          ),
          FittedBox(
            //지금 현재 제공하는 필요한 공간만 가져갈수 잇다.
            child: Container(
              margin: EdgeInsets.symmetric(vertical: 20),
              padding: EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: Color(0xFF372930),
                borderRadius: BorderRadius.circular(34),
              ),
              child: Row(
                children: [
                  Container(
                    padding: EdgeInsets.all(10),
                    height: 30,
                    width: 30,
                    decoration: BoxDecoration(
                      color: KPrimaryColor,
                      shape: BoxShape.circle,
                    ),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Color(0xFF372930),
                        shape: BoxShape.circle,
                      ),
                    ),
                  ),
                  SizedBox(width: 15),
                  Text(
                    'Get Started'.toUpperCase(),
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 19,
                    ),
                  ),
                  SizedBox(width: 15),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
