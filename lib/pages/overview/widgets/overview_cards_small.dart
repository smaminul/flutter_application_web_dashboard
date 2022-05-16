

// ignore_for_file: no_leading_underscores_for_local_identifiers

import 'package:flutter/material.dart';
import 'package:flutter_application_web_dashboard/pages/overview/widgets/info_card_small.dart';


class OverViewSmallScreen extends StatelessWidget {
  const OverViewSmallScreen({super.key});

  @override
  Widget build(BuildContext context) {
     double _width = MediaQuery.of(context).size.width;
    return SizedBox(
      height: 400,
      child: Column(
        children: [
        InfoCardSmall(title: "Rides in progress",
         value: "7", 
         isActive: true, 
         onTap: (){

         }),

         SizedBox(
           height: _width/64,
         ),

          InfoCardSmall(title: "Packages delivered",
         value: "17", 
      
         isActive: false, 
         onTap: (){

         }),

         SizedBox(
           height: _width/64,
         ),

          InfoCardSmall(title: "Cancelled delivery",
         value: "3", 
         
         isActive: false, 
         onTap: (){

         }),

         SizedBox(
           height: _width/64,
         ),

          InfoCardSmall(title: "Scheduled deliveries",
         value: "2", 
         
         isActive: false, 
         onTap: (){

         }),

        ],

      ),

    );
  }
}