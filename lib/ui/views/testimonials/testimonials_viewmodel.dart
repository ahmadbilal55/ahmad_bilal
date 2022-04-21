import 'package:carousel_slider/carousel_controller.dart';
import 'package:carousel_slider/carousel_options.dart';
import 'package:flutter/animation.dart';
import 'package:stacked/stacked.dart';

class TestimonialsViewModel extends BaseViewModel {
  int currentIndex = 0;

  CarouselController controller = CarouselController();

  void onPageChanged(int index, CarouselPageChangedReason _) {
    currentIndex = index;
    notifyListeners();
  }

  void moveForward(bool forward) {
    if (forward) {
      controller.nextPage(curve: Curves.easeOutCubic);
    } else {
      controller.previousPage(curve: Curves.easeOutCubic);
    }
  }
}
