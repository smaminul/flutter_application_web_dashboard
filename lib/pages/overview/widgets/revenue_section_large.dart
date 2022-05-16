


import 'package:flutter/material.dart';
import 'package:flutter_application_web_dashboard/constants/style.dart';
import 'package:flutter_application_web_dashboard/pages/overview/widgets/bar_chart.dart';
import 'package:flutter_application_web_dashboard/pages/overview/widgets/revenue_info.dart';
import 'package:flutter_application_web_dashboard/widgets/custom_text.dart';

class RevenueSctionlarge extends StatelessWidget {
  const RevenueSctionlarge({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(24),
      margin: const EdgeInsets.symmetric(vertical: 30),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
            offset: const Offset(0,6),
            color: lightGrey.withOpacity(0.1),
            blurRadius: 12.0
          )
        ],
        border: Border.all(color: lightGrey,width: 1)
      ),
      child: Row(children: [
        Expanded(child: Column(
          children: [
            CustomText(text: "Revenue Chart",
             size: 20,
              color: lightGrey, 
              weight: FontWeight.bold),

              SizedBox(
                width: 600,
                height: 200,
                child: SimpleBarChart.withSampleData(),
              )
          ],
        )),
        Container(
          width: 1,
          height: 120,
          color: lightGrey,
        ),

        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children:  [
              Row(children: const [
                 RevenueInfo(title: "today's revenue", amount: "23"),
                  RevenueInfo(title: "Last 7 days", amount: "120"),
              ],),
              const SizedBox(height: 30,),
               Row(children: const [
                 RevenueInfo(title: "Last 30 days", amount: "1103"),
                  RevenueInfo(title: "Last 12 days", amount: "3234"),
              ],),
             

        ],))
      ]),
    );
  }
}