import 'package:ahmad_bilal/services/context_based_service.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class MediaQueryService extends ContextBasedService with ListenableServiceMixin {

  double get width => MediaQuery.sizeOf(context).width;
  double get height => MediaQuery.sizeOf(context).height;
  double get aspectRatio => MediaQuery.sizeOf(context).aspectRatio;
  Size get size => MediaQuery.sizeOf(context);

  @override
  void notifyListeners() {
    super.notifyListeners();
  }

}
