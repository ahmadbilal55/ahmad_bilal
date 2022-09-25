import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:stacked/stacked.dart';

class MainViewModel extends BaseViewModel {
  final ScrollController controller = ScrollController();
  final FocusNode focusNode = FocusNode();

  void handleKeyEvent(RawKeyEvent event) {
    if (event.logicalKey == LogicalKeyboardKey.arrowUp) {
      scrollPage(scrollExtent: -100);
    } else if (event.logicalKey == LogicalKeyboardKey.arrowDown) {
      scrollPage(scrollExtent: 100);
    }
  }

  void scrollPage({required double scrollExtent}) {
    var offset = controller.offset;
    controller.animateTo(
      offset + 100,
      duration: const Duration(milliseconds: 100),
      curve: Curves.ease,
    );
  }

  @override
  void dispose() {
    focusNode.dispose();
    super.dispose();
  }
}
