import 'package:ahmad_bilal/app/app.locator.dart';
import 'package:flutter/cupertino.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class ProjectDetailsViewModel extends BaseViewModel {
  final _navigator = locator<NavigationService>();

  int currentIndex = 0;

  ScrollController controller = ScrollController();

  void goBack() {
    _navigator.back();
  }

  void scrollTo(double offsetAddition) {
    if (!controller.hasClients) return;

    controller.animateTo(
      controller.offset + offsetAddition,
      duration: const Duration(milliseconds: 100),
      curve: Curves.easeInOutCubic,
    );
  }
}
