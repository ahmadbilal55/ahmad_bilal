import 'package:ahmad_bilal/app/utils/paths.dart';
import 'package:ahmad_bilal/app/utils/strings.dart';
import 'package:ahmad_bilal/app/utils/theme_manager.dart';
import 'package:ahmad_bilal/ui/widgets/dumb_widgets/circle_painter.dart';
import 'package:ahmad_bilal/ui/widgets/dumb_widgets/screen_title.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class AboutView extends StatelessWidget {
  const AboutView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: const SizedBox(),
      tablet: const SizedBox(),
      desktop: buildDesktopLayout(context),
    );
  }

  Widget buildDesktopLayout(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    return Container(
      constraints: BoxConstraints(
        minHeight: screenHeight - 55,
      ),
      color: MyThemeData.secondaryBackground,
      child: ClipRRect(
        child: Stack(
          children: [
            CustomPaint(
              painter: CirclePainter(
                  offset: const Offset(0, 0), radius: screenHeight * 0.2),
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: CustomPaint(
                painter: CirclePainter(
                  offset: const Offset(0, 600),
                  radius: screenHeight * 0.3,
                  color: MyThemeData.primaryColor,
                ),
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
                constraints: const BoxConstraints(maxWidth: 600),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const ScreenTitle(title: Strings.about,),
                    const SizedBox(
                      height: 16,
                    ),
                    buildAvatar(size: 200),
                    const SizedBox(
                      height: 16,
                    ),
                    buildIntroText(
                      nameFontSize: 34,
                      introFontSize: 18,
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    const Text(
                      Strings.descIntro,
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: MyThemeData.white,
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Column buildIntroText(
      {required double nameFontSize, required double introFontSize}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          Strings.nameIntro,
          style: TextStyle(
            fontFamily: MyThemeData.defaultFont,
            fontSize: nameFontSize,
            fontWeight: FontWeight.bold,
            color: MyThemeData.white,
          ),
        ),
        Text(
          Strings.intro,
          style: TextStyle(
            fontSize: introFontSize,
            fontWeight: FontWeight.w500,
            color: MyThemeData.white,
          ),
        ),
      ],
    );
  }

  CircleAvatar buildAvatar({required double size}) {
    return CircleAvatar(
      backgroundColor: MyThemeData.backgroundColor,
      radius: size / 2,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(size / 2),
        child: Image.asset(
          Paths.displayPictureSquare,
          fit: BoxFit.cover,
          height: size,
          width: size,
        ),
      ),
    );
  }
}
