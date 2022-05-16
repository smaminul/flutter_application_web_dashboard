// ignore_for_file: no_leading_underscores_for_local_identifiers

import 'package:flutter/material.dart';
import 'package:flutter_application_web_dashboard/pages/overview/widgets/info_card.dart';

class OverViewMediumScreen extends StatelessWidget {
  const OverViewMediumScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          children: [
            InfoCard(
                title: "Rides in progress",
                value: "7",
                topColor: Colors.orange,
                isActive: false,
                onTap: () {}),
            SizedBox(
              width: _width / 64,
            ),
            InfoCard(
                title: "Packages delivered",
                value: "17",
                topColor: Colors.lightGreen,
                isActive: false,
                onTap: () {}),
          ],
        ),
        Row(
          children: [
            InfoCard(
                title: "Cancelled delivery",
                value: "3",
                topColor: Colors.redAccent,
                isActive: false,
                onTap: () {}),
            SizedBox(
              width: _width / 64,
            ),
            InfoCard(
                title: "Scheduled deliveries",
                value: "2",
                topColor: Colors.blue,
                isActive: false,
                onTap: () {}),
          ],
        ),
      ],
    );
  }
}
