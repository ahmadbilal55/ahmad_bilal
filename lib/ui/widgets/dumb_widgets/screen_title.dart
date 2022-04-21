import 'package:ahmad_bilal/app/utils/theme_manager.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class ScreenTitle extends StatelessWidget {
  const ScreenTitle({Key? key,required this.title, this.dark=false, this.margin = EdgeInsets.zero}) : super(key: key);
  final String title;
  final bool dark;
  final EdgeInsets margin;
  @override
  Widget build(BuildContext context) {
    final fontSize = getValueForScreenType<double>(context: context, mobile: 18,desktop: 36,tablet: 24);
    return  Padding(
      padding: margin,
      child: Text(
        title,
        style:  TextStyle(
          fontFamily: MyThemeData.defaultFont,
          fontSize: fontSize,
          fontWeight: FontWeight.bold,
          color:dark?MyThemeData.primaryColor: MyThemeData.white,
        ),
      ),
    );
  }
}
