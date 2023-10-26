import 'package:ahmad_bilal/app/extensions.dart';
import 'package:ahmad_bilal/app/utils/paths.dart';
import 'package:ahmad_bilal/app/utils/strings.dart';
import 'package:ahmad_bilal/ui/widgets/dumb_widgets/screen_title.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class AboutMeDesktopLayout extends StatelessWidget {
  const AboutMeDesktopLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const ScreenTitle(title: Strings.aboutMe),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  Strings.aboutMeDescription,
                  style: context.theme.textTheme.body.body
                      .copyWith(color: context.theme.labels.primary),
                ),
              ],
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: LottieBuilder.asset(Paths.codingAnimation),
          ),
        ),
      ],
    );
  }
}
