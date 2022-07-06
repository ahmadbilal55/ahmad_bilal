import 'package:ahmad_bilal/models/project_model.dart';
import 'package:stacked/stacked.dart';

class ProjectsViewModel extends BaseViewModel{


  bool focused = false;

  void onTapProject(ProjectModel project) {
  }

  setFocused(bool value) {
    focused = value;
    notifyListeners();
  }
}

