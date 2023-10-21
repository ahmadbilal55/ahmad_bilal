import 'package:ahmad_bilal/app/extensions.dart';
import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  const MyButton(
      {Key? key,
      required this.onPressed,
      this.label = '',
      this.height = 44,
      this.width = 100,
      this.radius = 8,
      this.child})
      : super(key: key);

  final VoidCallback onPressed;
  final String label;
  final Widget? child;
  final double height;
  final double radius;
  final double width;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
          backgroundColor: context.theme.tints.blue,
          padding: EdgeInsets.zero,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(radius),
          ),
          elevation: 1,
          minimumSize: Size(width, height),
          maximumSize: Size(width, height)),
      child: Center(
        child: child ??
            Text(
              label,
              style: context.theme.textTheme.body.body
                  .copyWith(color: Colors.white),
            ),
      ),
    );
  }
}
