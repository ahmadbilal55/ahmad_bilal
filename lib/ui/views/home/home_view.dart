import 'package:ahmad_bilal/app/utils/paths.dart';
import 'package:ahmad_bilal/app/utils/strings.dart';
import 'package:ahmad_bilal/ui/views/about/about_view.dart';
import 'package:ahmad_bilal/ui/views/contact/contact_view.dart';
import 'package:ahmad_bilal/ui/views/projects/projects_view.dart';
import 'package:ahmad_bilal/ui/views/skills/skills_view.dart';
import 'package:ahmad_bilal/ui/views/testimonials/testimonials_view.dart';
import 'package:ahmad_bilal/ui/widgets/smart_widgets/theme_switcher/theme_switch_button.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:stacked_themes/stacked_themes.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Stack(
                children: [
                  Center(
                    child: Container(
                      height: 450,
                      width: 300,
                      margin: const EdgeInsets.symmetric(
                          horizontal: 32, vertical: 16),
                      child: IgnorePointer(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            LottieBuilder.asset(
                              Paths.codingAnimation,
                              height: screenHeight * 0.3,
                              frameRate: FrameRate.max,
                            ),
                            const SizedBox(
                              height: 16,
                            ),
                            Text(Strings.name,
                                style: Theme.of(context).textTheme.headline6),
                            AnimatedTextKit(
                              repeatForever: true,
                              animatedTexts: [
                                buildTypewriterAnimatedText(
                                    context: context,
                                    text: 'Flutter Developer'),
                                buildTypewriterAnimatedText(
                                    context: context,
                                    text: 'Android Developer'),
                                buildTypewriterAnimatedText(
                                    context: context, text: 'Firebase Expert'),
                                buildTypewriterAnimatedText(
                                    context: context, text: 'NodeJs Developer'),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  ListView(
                    children: [
                      SizedBox(
                        height: screenHeight - screenHeight * 0.2,
                      ),
                      const AboutView(),
                      const SkillsView(),
                      const ProjectsView(),
                      const TestimonialsView(),
                      const ContactView(),
                    ],
                  ),
                  ThemeSwitcher(
                    endIcon:getThemeManager(context).isDarkMode?Icons.light_mode:Icons.dark_mode,
                    initialIcon:!getThemeManager(context).isDarkMode?Icons.light_mode:Icons.dark_mode,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  TypewriterAnimatedText buildTypewriterAnimatedText(
      {required BuildContext context, required String text}) {
    final fontSize = getValueForScreenType(
        context: context, mobile: 24, desktop: 30, tablet: 30);
    return TypewriterAnimatedText(
      text,
      speed:const Duration(milliseconds: 75),
      textStyle: TextStyle(
        fontSize: fontSize.toDouble(),
        fontWeight: FontWeight.bold,
        color: Theme.of(context).canvasColor,
      ),
    );
  }
}
