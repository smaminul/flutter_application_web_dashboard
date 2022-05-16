

import 'package:flutter/material.dart';
import 'package:flutter_application_web_dashboard/helpers/responsiveness.dart';
import 'package:flutter_application_web_dashboard/widgets/large_screen.dart';
import 'package:flutter_application_web_dashboard/widgets/side_menu.dart';
import 'package:flutter_application_web_dashboard/widgets/small_screen.dart';
import 'package:flutter_application_web_dashboard/widgets/top_nav.dart';


class SiteLayout extends StatelessWidget {

 final  GlobalKey<ScaffoldState>scaffoldKey=GlobalKey();

  SiteLayout({Key? key}) : super(key: key);
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      key:scaffoldKey,
      appBar: topNavigationBar(context, scaffoldKey),
      drawer: const Drawer(
        child: SideMenu(),
      ),
      body:  const ResponsiveWidget(largeScreen: LargeScreen(),smallScreen: SmallScreen(),customScreen:  LargeScreen(), mediumScreen: LargeScreen(),)
    );
    
  }
}