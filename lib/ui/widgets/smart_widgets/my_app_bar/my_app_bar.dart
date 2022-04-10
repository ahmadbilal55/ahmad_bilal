import 'package:ahmad_bilal/app/utils/strings.dart';
import 'package:ahmad_bilal/app/utils/theme_manager.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class MyAppBar extends StatelessWidget {
  const MyAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: const SizedBox(),
      tablet: const SizedBox(),
      desktop: buildDesktopAppBar(),
    );
  }

  Widget buildDesktopAppBar() {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(16),
      height: 55,
      color: MyThemeData.cardColor,
      child: Row(
        children: const [
          Text(
            Strings.name,
            style: TextStyle(
              fontFamily: MyThemeData.defaultFont,
              fontSize: 24,
              fontWeight: FontWeight.w500,
              color: MyThemeData.backgroundColor,
            ),
          ),
          Spacer(),
          Text(
            Strings.home,
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w500,
              color: MyThemeData.backgroundColor,
            ),
          ),
          SizedBox(
            width: 16,
          ),
          Text(
            Strings.home,
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w500,
              color: MyThemeData.backgroundColor,
            ),
          ),
          SizedBox(
            width: 16,
          ),
          Text(
            Strings.home,
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w500,
              color: MyThemeData.backgroundColor,
            ),
          ),
          SizedBox(
            width: 16,
          ),
          Text(
            Strings.home,
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w500,
              color: MyThemeData.backgroundColor,
            ),
          ),
        ],
      ),
    );
  }
}
