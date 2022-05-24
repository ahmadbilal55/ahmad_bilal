import 'package:ahmad_bilal/app/utils/paths.dart';
import 'package:ahmad_bilal/app/utils/strings.dart';
import 'package:ahmad_bilal/ui/widgets/dumb_widgets/circle_painter.dart';
import 'package:ahmad_bilal/ui/widgets/dumb_widgets/screen_title.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class AboutView extends StatelessWidget {
  const AboutView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: buildLayout(context),
      tablet: buildLayout(context),
      desktop: buildLayout(context),
    );
  }

  Widget buildLayout(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    return Container(
      constraints: BoxConstraints(
        minHeight: screenHeight,
      ),
      color: Theme.of(context).accentColor,
      child: ClipRRect(
        child: Stack(
          children: [
            CustomPaint(
              painter: CirclePainter(
                color: Theme.of(context).primaryColor,
                  offset: const Offset(0, 0), radius: screenHeight * 0.2),
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: CustomPaint(
                painter: CirclePainter(
                  offset: const Offset(0, 600),
                  radius: screenHeight * 0.3,
                  color: Theme.of(context).primaryColor.withOpacity(0.5),
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
                      context: context,
                      nameFontSize: 34,
                      introFontSize: 18,
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                     Text(
                      Strings.descIntro,
                      style: Theme.of(context).textTheme.bodyText1
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
      {required BuildContext context,required double nameFontSize, required double introFontSize}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          Strings.nameIntro,
          style: Theme.of(context).textTheme.headline1!.copyWith(fontSize: nameFontSize),
        ),
        Text(
          Strings.intro,
          style: Theme.of(context).textTheme.bodyText1,
        ),
      ],
    );
  }

  CircleAvatar buildAvatar({required double size}) {
    return CircleAvatar(
      backgroundColor: Colors.transparent,
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
