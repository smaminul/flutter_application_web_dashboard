
import 'package:flutter/material.dart';
import 'package:flutter_application_web_dashboard/constants/controllers.dart';
import 'package:flutter_application_web_dashboard/pages/clients/widgets/clients_table.dart';
import 'package:flutter_application_web_dashboard/widgets/custom_text.dart';
import 'package:get/get.dart';

import '../../helpers/responsiveness.dart';


class ClientsPage extends StatelessWidget {
  const ClientsPage({super.key});

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
        ClientsTable()
      ],
    ))
      ],
    );
  }
}