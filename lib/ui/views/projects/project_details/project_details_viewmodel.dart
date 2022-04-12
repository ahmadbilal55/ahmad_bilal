import 'package:ahmad_bilal/app/app.locator.dart';
import 'package:carousel_slider/carousel_controller.dart';
import 'package:carousel_slider/carousel_options.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class ProjectDetailsViewModel extends BaseViewModel{

  final _navigator = locator<NavigationService>();

  int currentIndex = 0;

  CarouselController controller = CarouselController();

  setCurrentIndex(int index, CarouselPageChangedReason reason) {
    currentIndex = index;
    notifyListeners();
  }

  void goBack() {
    _navigator.back();
  }

  moveForward(bool forward) {
    if(forward){
      controller.nextPage();
    }else{
      controller.previousPage();
    }
  }
}