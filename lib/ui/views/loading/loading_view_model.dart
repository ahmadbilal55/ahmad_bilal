import 'package:ahmad_bilal/app/app.locator.dart';
import 'package:ahmad_bilal/app/app.router.dart';
import 'package:ahmad_bilal/app/assets.dart';
import 'package:ahmad_bilal/app/utils/paths.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class LoadingViewModel extends BaseViewModel {
  int _totalImages = 0;
  int _numberOfCachedImages = 0;
  double progress = 0;

  final navigationService = locator<NavigationService>();

  Future<void> initialize(BuildContext context) async {
        _calculateTotalImages();
    await precacheAllImages(context);
    Future.delayed(const Duration(milliseconds: 600), () {
      navigationService.clearStackAndShow(Routes.homeView);
    });
  }

  Future<void> precacheAllImages(BuildContext context) async {
    for (final project in projects) {
      for (final image in project.screenshots) {
        await precacheImage(AssetImage(image), context);
        _numberOfCachedImages++;
        _updateProgress();
      }
    }
    for (final path in Paths.allImagesPaths) {
      await precacheImage(AssetImage(path), context);
      _numberOfCachedImages++;
      _updateProgress();
    }
  }

  void _calculateTotalImages() {
    for (final project in projects) {
      for (final _ in project.screenshots) {
        _totalImages++;
      }
    }

    for (final _ in Paths.allImagesPaths) {
      _totalImages++;
    }
  }

  _updateProgress() {
    progress = (_numberOfCachedImages / _totalImages) * 100;
    notifyListeners();
  }
}
