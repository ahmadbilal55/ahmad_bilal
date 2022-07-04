import 'package:flutter/material.dart';

class AnimatedCircle extends StatelessWidget {
  const AnimatedCircle(
      {Key? key, required this.iconPath, required this.label,})
      : super(key: key);

  final String iconPath;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AspectRatio(
          aspectRatio: 1.0,
          child: TweenAnimationBuilder<double>(
            curve: Curves.easeOutCubic,
            tween: Tween<double>(begin: 0, end: 1),
            builder: (context, value, __) => Stack(
              fit: StackFit.expand,
              alignment: Alignment.center,
              children: [
                Center(
                  child: Image.asset(iconPath,height: 40,)
                ),
                CircularProgressIndicator(
                  value: value,
                  backgroundColor:
                      Theme.of(context).colorScheme.primary.withOpacity(0.3),
                  color: Theme.of(context).colorScheme.outline,
                ),
              ],
            ),
            duration: const Duration(seconds: 1),
          ),
        ),
        const SizedBox(height: 8),
        Text(label)
      ],
    );
  }
}
