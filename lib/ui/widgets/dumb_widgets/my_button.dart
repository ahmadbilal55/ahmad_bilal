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
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
      ),
    );
  }
}
