

import 'package:flutter/material.dart';
import 'package:flutter_application_web_dashboard/constants/controllers.dart';
import 'package:flutter_application_web_dashboard/constants/style.dart';
import 'package:flutter_application_web_dashboard/widgets/custom_text.dart';
import 'package:get/get.dart';
class VerticalMenuItem extends StatelessWidget {

  final String itemName;
  final Function() onTap;
  
  const VerticalMenuItem({super.key, required this.itemName, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      onHover: (value){
        value ? 
        menuController.onHover(itemName):
        menuController.onHover("not hovering");
      },
      child: Obx(()=>Container(
        color: menuController.isHovering(itemName) ?
        lightGrey.withOpacity(0.1):Colors.transparent,
        child: Row(
          children: [

            Visibility(visible: menuController.isHovering(itemName) || 
            menuController.isActive(itemName),
            maintainSize: true,
            maintainState: true,
            maintainAnimation: true,
            child: Container(width: 3,height: 72,color: dark,),
            ),

           
            Expanded(child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Padding(padding: const EdgeInsets.all(16),
                child: menuController.returnIconFor(itemName),
                ),
                
                if(!menuController.isActive(itemName))
                Flexible(child: CustomText(text: itemName, size: 16, color: menuController.isHovering(itemName)? dark : lightGrey, weight: FontWeight.normal))
                else
                Flexible(child: CustomText(text: itemName, weight: FontWeight.bold, color: dark, size: 18,))

            ],))
          
           
            
        ]),
      )),
    );
  }
}