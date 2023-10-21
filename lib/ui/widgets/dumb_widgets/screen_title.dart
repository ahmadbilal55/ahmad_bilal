import 'package:ahmad_bilal/app/extensions.dart';
import 'package:flutter/material.dart';

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
    return Padding(
      padding: margin,
      child: Text(
        title,
        style: context.theme.textTheme.bigTitles.hugeTitle.copyWith(
          color: context.theme.labels.primary,
        ),
      ),
    );
  }
}
