import 'package:ahmad_bilal/ui/views/home/home_view.dart';
import 'package:ahmad_bilal/ui/views/projects/project_details/project_details_view.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';

@StackedApp(
  routes: [
    MaterialRoute(page: HomeView,initial: true),
    MaterialRoute(page: ProjectDetailsView,),
  ],
  dependencies: [
    LazySingleton(classType: NavigationService),
  ],
)
class AppState {}
