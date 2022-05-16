
import 'package:flutter/material.dart';
import 'package:flutter_application_web_dashboard/helpers/responsiveness.dart';
import 'package:flutter_application_web_dashboard/widgets/horizontal_menu_item.dart';
import 'package:flutter_application_web_dashboard/widgets/vertical_menu_item.dart';

class SideMenuItem extends StatelessWidget {

  final String itemName;
  final Function() onTap;
  const SideMenuItem({super.key, required this.itemName, required this.onTap});

  @override
  Widget build(BuildContext context) {
    if(ResponsiveWidget.isCustomSize(context)) {
      return VerticalMenuItem(itemName: itemName, onTap: onTap);
    }
 
      return HorizontalMenuItem(itemName: itemName, onTap: onTap);
    }
  }
