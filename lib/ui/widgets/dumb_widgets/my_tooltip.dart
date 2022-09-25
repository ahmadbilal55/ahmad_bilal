import 'package:flutter/material.dart';

import 'tool_tip_border.dart';

class MyTooltip extends StatelessWidget {
  const MyTooltip({Key? key, this.message, this.child}) : super(key: key);
  final String? message;
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return Tooltip(
      message: message,
      textStyle: const TextStyle(
          color: Colors.white, fontSize: 10),
      decoration: ShapeDecoration(
        shape: const TooltipShapeBorder(),
        color: Theme.of(context).colorScheme.primary,
      ),
      preferBelow: true,
      waitDuration: const Duration(milliseconds: 300),
      child: child
    );
  }
}
