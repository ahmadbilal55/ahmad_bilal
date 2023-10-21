import 'dart:ui';

import 'package:ahmad_bilal/app/app.locator.dart';
import 'package:ahmad_bilal/services/media_query_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/size_changed_layout_notifier.dart';
import 'package:stacked/stacked.dart';

class DottedBackroundViewModel extends ReactiveViewModel
    with WidgetsBindingObserver {
  final _mediaQueryService = locator<MediaQueryService>();

  late int numberOfDotsPerRow;
  late int numberOfDotsPerColumn;

  int get numberOfDots => numberOfDotsPerRow * numberOfDotsPerColumn;

  @override
  List<ListenableServiceMixin> get listenableServices => [_mediaQueryService];

  void onViewModelReady() {
    WidgetsBinding.instance.addObserver(this);
    _setNumberOfDots();
  }

  void _setNumberOfDots() {
    numberOfDotsPerRow = (_mediaQueryService.width / 50).ceil()+2;
    numberOfDotsPerColumn = ((_mediaQueryService.height / 50).ceil())+2;
    notifyListeners();
  }
  @override
  void didChangeMetrics() {
    _mediaQueryService.notifyListeners();
    _setNumberOfDots();
    super.didChangeMetrics();
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }
}
