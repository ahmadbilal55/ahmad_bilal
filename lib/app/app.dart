import 'package:ahmad_bilal/app/utils/theme_manager.dart';
import 'package:ahmad_bilal/ui/view/tabs/tabs_view.dart';
import 'package:stacked/stacked_annotations.dart';

@StackedApp(
  routes: [
    MaterialRoute(page: TabsView, initial: true),
  ],
  dependencies: [
    Singleton(classType: ThemeManager),
  ],
)
class AppState {}
