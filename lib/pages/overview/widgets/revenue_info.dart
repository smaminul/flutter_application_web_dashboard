

import 'package:flutter/material.dart';

import '../../../constants/style.dart';

class RevenueInfo extends StatelessWidget {

  final String title;
  final String amount;
  const RevenueInfo({super.key, required this.title, required this.amount});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: RichText(
        textAlign: TextAlign.center,
        text:  TextSpan(
          children: [
            TextSpan(
              text: "$title\n\n\n",
              style: TextStyle(color: lightGrey,fontSize: 16)
            ),
            TextSpan(
              text: "\$ $amount",
              style: const TextStyle(fontSize: 16,fontWeight: FontWeight.bold)
            ),
          ]),
      )
    );
  }
}