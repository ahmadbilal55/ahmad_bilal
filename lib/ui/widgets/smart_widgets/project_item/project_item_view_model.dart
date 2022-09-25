import 'package:ahmad_bilal/app/app.locator.dart';
import 'package:ahmad_bilal/app/app.router.dart';
import 'package:ahmad_bilal/models/project_model.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class ProjectItemViewModel extends BaseViewModel{

  late ProjectModel project;

  bool hovering = false;

  void onModelReady(ProjectModel projectModel) {
    project = projectModel;
    notifyListeners();
  }

  void setHovering(bool value){
    hovering = value;
    notifyListeners();
  }


  void onTapProject(){
    locator<NavigationService>().navigateTo(Routes.projectDetailsView,);
  }

}