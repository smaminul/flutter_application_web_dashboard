




import 'package:flutter/material.dart';
import 'package:flutter_application_web_dashboard/pages/clients/clients.dart';
import 'package:flutter_application_web_dashboard/pages/drivers/drivers.dart';
import 'package:flutter_application_web_dashboard/pages/overview/overview.dart';
import 'package:flutter_application_web_dashboard/routing/route.dart';

Route<dynamic> generateRoute(RouteSettings settings){
  
  switch(settings.name){
    case OverViewPageRoute:
    return _getPageRoute(const OverViewPage());

    case DriversPageRoute:
    return _getPageRoute(const DriversPage());

    case ClientsPageRoute:
    return _getPageRoute(const ClientsPage());

    // case AuthenticationPageRoute:
    // return _getPageRoute(const AuthenticationPage());
    
    default:
    return  _getPageRoute(const OverViewPage());
  }
}

PageRoute _getPageRoute(Widget child){
  return MaterialPageRoute(builder: (context)=>child);
}