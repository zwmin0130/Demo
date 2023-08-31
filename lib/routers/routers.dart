import 'dart:js';
import 'package:flutter/material.dart';
//配置ios风格的路由
// import 'package:flutter/cupertino.dart';

import '../pages/tabs.dart';

Map routes = {
  "/": (context) => const Tabs(),
};

var onGenerateRoute = (RouteSettings settings) {
  final String? name = settings.name;
  final Function? pageContentBuilder = routes[name];
  if (pageContentBuilder != null) {
    if (settings.arguments != null) {
      final Route route = MaterialPageRoute(
          builder: (context) =>
              pageContentBuilder(context, arguments: settings.arguments));
      return route;
    }
    final Route route =
        MaterialPageRoute(builder: (context) => pageContentBuilder(context));
    // if (settings.arguments != null) {
    //   final Route route = CupertinoPageRoute(
    //       builder: (context) =>
    //           pageContentBuilder(context, arguments: settings.arguments));
    //   return route;
    // }
    // final Route route =
    //     CupertinoPageRoute(builder: (context) => pageContentBuilder(context));
    return route;
  }
  return null;
};
