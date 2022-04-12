import 'package:ahmad_bilal/app/app.locator.dart';
import 'package:ahmad_bilal/app/app.router.dart';
import 'package:ahmad_bilal/models/project_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class ProjectsViewModel extends BaseViewModel {
  int? elevateIndex;

  ScrollController scrollController = ScrollController();
  final _navigator = locator<NavigationService>();

  @override
  void dispose() {
    scrollController.dispose();
    super.dispose();
  }

  void showProjectDetails() {}

  void mouseEnter(int? index) {
    elevateIndex = index;
    notifyListeners();
  }

  void onTapProject(ProjectModel project) {
    _navigator.navigateTo(
      Routes.projectDetailsView,
      arguments: ProjectDetailsViewArguments(projectModel: project),
    );
  }
}
