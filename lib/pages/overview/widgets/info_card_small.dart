import 'package:flutter/material.dart';
import 'package:flutter_application_web_dashboard/constants/style.dart';
import 'package:flutter_application_web_dashboard/widgets/custom_text.dart';

class InfoCardSmall extends StatelessWidget {

  final  String title;
  final String value;
  final bool isActive;
  final Function() onTap;
  
  const InfoCardSmall({super.key, required this.title, required this.value, required this.isActive, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: onTap,
        child: Container(
          padding: const EdgeInsets.all(24),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8),
            border: Border.all(color: isActive ? active: lightGrey, width: .5 )
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CustomText(
                text: title, 
                size: 24, 
                color: isActive? active : lightGrey, 
                weight: FontWeight.w300),
                  CustomText(
                text: value, 
                size: 24, 
                color: isActive? active : lightGrey, 
                weight: FontWeight.bold),
            ],
          ),

        ),
      ),
    );
    
  }
}