import 'package:ahmad_bilal/services/media_query_service.dart';
import 'package:ahmad_bilal/ui/views/main/main_view.dart';
import 'package:ahmad_bilal/ui/views/project_details/project_details_view.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:stacked_themes/stacked_themes.dart';

@StackedApp(
  routes: [
    MaterialRoute(page: HomeView,initial: true),
    MaterialRoute(page: ProjectDetailsView,),
  ],
  dependencies: [
    LazySingleton(classType: NavigationService),
    LazySingleton(classType: MediaQueryService),
    LazySingleton(classType: ThemeService),
  ],
)
class AppState {}
