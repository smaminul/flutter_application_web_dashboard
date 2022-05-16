


import 'package:flutter/material.dart';
import 'package:flutter_application_web_dashboard/constants/controllers.dart';
import 'package:flutter_application_web_dashboard/helpers/responsiveness.dart';
import 'package:flutter_application_web_dashboard/pages/overview/widgets/available_drivers.dart';
import 'package:flutter_application_web_dashboard/pages/overview/widgets/overview_cards_large.dart';
import 'package:flutter_application_web_dashboard/pages/overview/widgets/overview_cards_medium.dart';
import 'package:flutter_application_web_dashboard/pages/overview/widgets/overview_cards_small.dart';
import 'package:flutter_application_web_dashboard/pages/overview/widgets/revenue_section_large.dart';
import 'package:flutter_application_web_dashboard/pages/overview/widgets/revenue_section_small.dart';
import 'package:flutter_application_web_dashboard/widgets/custom_text.dart';
import 'package:get/get.dart';

class OverViewPage extends StatelessWidget {
  const OverViewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Obx(()=> Row(
          children: [
            Container(
              margin: EdgeInsets.only(top: 
                ResponsiveWidget.isSmallScreen(context) ? 56 : 6
              ),
              child: CustomText(color: Colors.black, size: 24, text: menuController.activeItem.value, weight: FontWeight.bold,),
            )
          ],
        )),
        Expanded(child: ListView(
          children: [
            if(ResponsiveWidget.isLargeScreen(context) || 
            ResponsiveWidget.isLargeScreen(context)) 
             if(ResponsiveWidget.isCustomSize(context)) 
             const OverViewMediumScreen()
             else
             const OverViewCardLargeScreen()
             else
             const OverViewSmallScreen(),

            if(!ResponsiveWidget.isSmallScreen(context))
             const RevenueSctionlarge()
             else
            const RevenueSectionSmall(),

            const AvailableDrivers()
            
          ],
        ))
      ],
    );
  }
}