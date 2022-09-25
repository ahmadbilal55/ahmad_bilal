import 'package:ahmad_bilal/app/app.locator.dart';
import 'package:ahmad_bilal/app/utils/theme_manager.dart';
import 'package:flutter/material.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:stacked_themes/stacked_themes.dart';

import 'app/app.router.dart';

void main() async{
  await ThemeManager.initialise();
  setupLocator();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ahmad Bilal',
      theme: lightThemeData,
      navigatorKey: StackedService.navigatorKey,
      onGenerateInitialRoutes: (initialRoute)=>[StackedRouter().onGenerateRoute(RouteSettings(name:initialRoute))!],
      onGenerateRoute: StackedRouter().onGenerateRoute,
      //home: const LoadingView(),
    );
  }
}
