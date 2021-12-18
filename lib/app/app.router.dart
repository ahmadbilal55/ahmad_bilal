// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// StackedRouterGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import '../ui/view/tabs/tabs_view.dart';

class Routes {
  static const String tabsView = '/';
  static const all = <String>{
    tabsView,
  };
}

class StackedRouter extends RouterBase {
  @override
  List<RouteDef> get routes => _routes;
  final _routes = <RouteDef>[
    RouteDef(Routes.tabsView, page: TabsView),
  ];
  @override
  Map<Type, StackedRouteFactory> get pagesMap => _pagesMap;
  final _pagesMap = <Type, StackedRouteFactory>{
    TabsView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const TabsView(),
        settings: data,
      );
    },
  };
}
