import 'package:ahmad_bilal/app/app.locator.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class ProjectDetailsViewModel extends BaseViewModel {
  final _navigator = locator<NavigationService>();

  int currentIndex = 0;

  ScrollController controller = ScrollController();

  final carouselController = CarouselController();

  void goBack() {
    _navigator.back();
  }

  onPageChanged(int index, CarouselPageChangedReason _) {
    currentIndex = index;
    notifyListeners();
  }

  void changePage({required bool forward}) {
    currentIndex += forward ? 1 : -1;
    carouselController.animateToPage(
      currentIndex,
      curve: Curves.fastOutSlowIn,
      duration: const Duration(milliseconds: 300),
    );
  }
}
