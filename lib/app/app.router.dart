// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// StackedRouterGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import '../models/project_model.dart';
import '../ui/views/home/home_view.dart';
import '../ui/views/loading/loading_view.dart';
import '../ui/views/projects/project_details/project_details_view.dart';

class Routes {
  static const String loadingView = '/';
  static const String homeView = '/home-view';
  static const String projectDetailsView = '/project-details-view';
  static const all = <String>{
    loadingView,
    homeView,
    projectDetailsView,
  };
}

class StackedRouter extends RouterBase {
  @override
  List<RouteDef> get routes => _routes;
  final _routes = <RouteDef>[
    RouteDef(Routes.loadingView, page: LoadingView),
    RouteDef(Routes.homeView, page: HomeView),
    RouteDef(Routes.projectDetailsView, page: ProjectDetailsView),
  ];
  @override
  Map<Type, StackedRouteFactory> get pagesMap => _pagesMap;
  final _pagesMap = <Type, StackedRouteFactory>{
    LoadingView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const LoadingView(),
        settings: data,
      );
    },
    HomeView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const HomeView(),
        settings: data,
      );
    },
    ProjectDetailsView: (data) {
      var args = data.getArgs<ProjectDetailsViewArguments>(nullOk: false);
      return MaterialPageRoute<dynamic>(
        builder: (context) => ProjectDetailsView(
          key: args.key,
          project: args.project,
        ),
        settings: data,
      );
    },
  };
}

/// ************************************************************************
/// Arguments holder classes
/// *************************************************************************

/// ProjectDetailsView arguments holder class
class ProjectDetailsViewArguments {
  final Key? key;
  final ProjectModel project;
  ProjectDetailsViewArguments({this.key, required this.project});
}
