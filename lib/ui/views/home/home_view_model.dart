import 'package:stacked/stacked.dart';

class HomeViewModel extends BaseViewModel{
  bool showUpAnimationCompleted = false;

  void onShowUpAnimationCompleted(){
    showUpAnimationCompleted = true;
    notifyListeners();
  }


}