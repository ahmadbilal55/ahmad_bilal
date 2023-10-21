import 'package:ahmad_bilal/app/app.locator.dart';
import 'package:ahmad_bilal/app/utils/theme.dart';
import 'package:flutter/material.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:stacked_themes/stacked_themes.dart';

import 'app/app.router.dart';
import 'services/media_query_service.dart';

void main() async {
  await ThemeManager.initialise();
  setupLocator();

  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final theme = ThemeData(canvasColor: Colors.transparent);

  @override
  void initState() {
    locator<MediaQueryService>().context = context;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ahmad Bilal',
      theme: theme.copyWith(
        extensions: <ThemeExtension<dynamic>>[
          AppCupertinoTheme.light,
        ],
      ),
      darkTheme: theme.copyWith(
          extensions: <ThemeExtension<dynamic>>[
            AppCupertinoTheme.dark,
          ],
        ),
      navigatorKey: StackedService.navigatorKey,
      onGenerateInitialRoutes: (initialRoute) =>
          [StackedRouter().onGenerateRoute(RouteSettings(name: initialRoute))!],
      onGenerateRoute: StackedRouter().onGenerateRoute,
      //home: const LoadingView(),
    );
  }
}
