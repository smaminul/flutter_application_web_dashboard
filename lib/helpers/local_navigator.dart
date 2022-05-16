




import 'package:flutter/widgets.dart';
import 'package:flutter_application_web_dashboard/constants/controllers.dart';
import 'package:flutter_application_web_dashboard/routing/route.dart';
import 'package:flutter_application_web_dashboard/routing/router.dart';

Navigator localNavigator() => Navigator(
  key:navigationController.navigationKey,
  initialRoute: OverViewPageRoute,
  onGenerateRoute: generateRoute,

);