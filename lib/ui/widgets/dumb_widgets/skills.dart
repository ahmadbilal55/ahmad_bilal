import 'package:ahmad_bilal/app/utils/paths.dart';
import 'package:ahmad_bilal/ui/widgets/dumb_widgets/animated_circle.dart';
import 'package:flutter/material.dart';

class Skills extends StatelessWidget {
  const Skills({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [
        SizedBox(width: 16),
        Expanded(
          child: AnimatedCircle(
            iconPath: Paths.flutter,
            label: 'Flutter',
          ),
        ),
        SizedBox(width: 16),
        Expanded(
          child: AnimatedCircle(
            iconPath: Paths.android,
            label: 'Android',
          ),
        ),
        SizedBox(width: 16),
        Expanded(
          child: AnimatedCircle(
            iconPath: Paths.firebase,
            label: 'Firebase',
          ),
        ),
        SizedBox(width: 16),
      ],
    );
  }
}
