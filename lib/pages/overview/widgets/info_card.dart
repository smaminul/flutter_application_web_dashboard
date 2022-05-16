

// ignore_for_file: unnecessary_string_interpolations

import 'package:flutter/material.dart';
import 'package:flutter_application_web_dashboard/constants/style.dart';

class InfoCard extends StatelessWidget {

  final  String title;
  final String value;
  final Color topColor;
  final bool isActive;
  final Function() onTap;

   const InfoCard({ Key? key,  required this.title, required this.value, required this.topColor, required this.isActive , required this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: onTap, 
        child: Container(
          height: 136,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                offset: const Offset(0,6),
                color:lightGrey.withOpacity(0.1),
                blurRadius: 12,
              )
            ],
            borderRadius: BorderRadius.circular(8)
          ),
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(child: Container(
                    color: topColor ?? active,
                    height: 5,
                  ))
                ],
              ),
              Expanded(child: Container()),
              RichText(
                textAlign: TextAlign.center,
                text:  TextSpan(
                  children: [
                    TextSpan(
                         text: "$title\n",
                  style: TextStyle(
                    fontSize: 16,
                    color: isActive ? active : lightGrey 
                    )),
                     TextSpan(
                         text: "$value",
                  style: TextStyle(
                    fontSize: 40,
                    color: isActive ? active : dark 
                    )),
                  ],
                 
                  
                )),
               Expanded(child: Container()),

            ]),

        ),
        ),
    );
  }
}