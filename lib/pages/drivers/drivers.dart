


import 'package:flutter/material.dart';
import 'package:flutter_application_web_dashboard/constants/controllers.dart';
import 'package:flutter_application_web_dashboard/helpers/responsiveness.dart';
import 'package:flutter_application_web_dashboard/pages/drivers/widgets/drivers_table.dart';
import 'package:flutter_application_web_dashboard/widgets/custom_text.dart';
import 'package:get/get.dart';


class DriversPage extends StatelessWidget {
  const DriversPage({super.key});

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
      children: const [
        DriversTable()
      ],
    ))

      ],
    );
  }
}