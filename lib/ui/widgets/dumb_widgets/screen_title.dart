import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class ScreenTitle extends StatelessWidget {
  const ScreenTitle(
      {Key? key,
      required this.title,
      this.dark = false,
      this.margin = EdgeInsets.zero})
      : super(key: key);
  final String title;
  final bool dark;
  final EdgeInsets margin;

  @override
  Widget build(BuildContext context) {
    final fontSize = getValueForScreenType<double>(
        context: context, mobile: 30, desktop: 36, tablet: 30);
    return Padding(
      padding: margin,
      child: Text(
        title,
        style: TextStyle(
          fontSize: fontSize,
          fontWeight: FontWeight.bold,
          color: !dark
              ? Theme.of(context).textTheme.headline1?.color
              : Theme.of(context).textTheme.headline2?.color,
        ),
      ),
    );
  }
}
