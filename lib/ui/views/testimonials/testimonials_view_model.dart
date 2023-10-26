import 'package:flutter/cupertino.dart';
import 'package:stacked/stacked.dart';

class TestimonialsViewModel extends BaseViewModel{
  late final ScrollController scrollController;

  void onViewModelReady(){
    scrollController = ScrollController();
  }

  @override
  void dispose() {
    scrollController.dispose();
    super.dispose();
  }
}