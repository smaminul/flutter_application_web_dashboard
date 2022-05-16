import 'package:flutter/material.dart';
import 'package:flutter_application_web_dashboard/constants/style.dart';
import 'package:flutter_application_web_dashboard/controllers/menu_controllers.dart';
import 'package:flutter_application_web_dashboard/controllers/navigation_controller.dart';
import 'package:flutter_application_web_dashboard/layout.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  Get.put(MenuController());
   Get.put(NavigationController());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Dash',
      theme: ThemeData(
        scaffoldBackgroundColor: light,
        textTheme: GoogleFonts.mulishTextTheme(
          Theme.of(context).textTheme
        ).apply(
          bodyColor: Colors.black
        ),
        pageTransitionsTheme: const PageTransitionsTheme(
          builders: {
            TargetPlatform.iOS:FadeUpwardsPageTransitionsBuilder(),
            TargetPlatform.android:FadeUpwardsPageTransitionsBuilder()
          } ),
          primaryColor: Colors.blue
      ),
      home:   SiteLayout(),
    );
  }
}