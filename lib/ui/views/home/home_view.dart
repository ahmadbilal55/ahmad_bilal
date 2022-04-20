import 'dart:ui';

import 'package:ahmad_bilal/app/utils/paths.dart';
import 'package:ahmad_bilal/app/utils/strings.dart';
import 'package:ahmad_bilal/app/utils/theme_manager.dart';
import 'package:ahmad_bilal/ui/views/about/about_view.dart';
import 'package:ahmad_bilal/ui/views/contact/contact_view.dart';
import 'package:ahmad_bilal/ui/views/projects/projects_view.dart';
import 'package:ahmad_bilal/ui/views/skills/skills_view.dart';
import 'package:ahmad_bilal/ui/views/testimonials/testimonials_view.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:responsive_builder/responsive_builder.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyThemeData.backgroundColor,
      body: SafeArea(
        child: ScreenTypeLayout(
          mobile: buildMobileLayout(),
          desktop: buildDesktopLayout(context),
          tablet: buildMobileLayout(),
        ),
      ),
    );
  }

  Widget buildMobileLayout() {
    return const SizedBox();
  }

  Widget buildDesktopLayout(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    return Column(
      children: [
        Expanded(
          child: Stack(
            children: [
              Center(
                child: Container(
                  height: 450,
                  width: 300,
                  margin: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      LottieBuilder.asset(Paths.codingAnimation,
                          height: screenHeight * 0.3),
                      const SizedBox(
                        height: 16,
                      ),
                      const Text(
                        Strings.name,
                        style: TextStyle(
                          fontSize: 42,
                          fontWeight: FontWeight.bold,
                          fontFamily: MyThemeData.defaultFont,
                          color: MyThemeData.primaryColor,
                        ),
                      ),
                      AnimatedTextKit(
                        repeatForever: true,
                        animatedTexts: [
                          buildTypewriterAnimatedText(text: 'Flutter Developer'),
                          buildTypewriterAnimatedText(text: 'Android Developer'),
                          buildTypewriterAnimatedText(text: 'Firebase Expert'),
                          buildTypewriterAnimatedText(text: 'NodeJs Developer'),
                        ],
                      ),
                    ],
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
            ],
          ),
        ),
      ],
    );
  }

  TypewriterAnimatedText buildTypewriterAnimatedText({required String text}) {
    return TypewriterAnimatedText(
      text,
      textStyle: const TextStyle(
        fontSize: 30,
        fontWeight: FontWeight.bold,
        fontFamily: MyThemeData.defaultFont,
        color: MyThemeData.secondaryBackground,
      ),
    );
  }
}
