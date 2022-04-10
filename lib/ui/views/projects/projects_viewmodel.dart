import 'package:ahmad_bilal/models/project_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:stacked/stacked.dart';

class ProjectsViewModel extends BaseViewModel{

  int? elevateIndex;

  ScrollController scrollController = ScrollController();

  @override
  void dispose() {
    scrollController.dispose();
    super.dispose();
  }

  void showProjectDetails(){

  }

  void mouseEnter(int? index) {
    elevateIndex = index;
    notifyListeners();
  }



  void onTapProject(ProjectModel project) {
  }
}