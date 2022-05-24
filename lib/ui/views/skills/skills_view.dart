import 'package:ahmad_bilal/app/assets.dart';
import 'package:ahmad_bilal/models/skill_model.dart';
import 'package:ahmad_bilal/ui/widgets/dumb_widgets/screen_title.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class SkillsView extends StatelessWidget {
  const SkillsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Container(
      color: Theme.of(context).backgroundColor,
      padding: const EdgeInsets.all(16),
      child: ScreenTypeLayout(
        mobile: buildMobileLayout(context, screenSize),
        tablet: buildDesktopLayout(context, screenSize),
        desktop: buildDesktopLayout(context, screenSize),
      ),
    );
  }

  Widget buildDesktopLayout(BuildContext context, Size screenSize) {
    return Column(
      children: [
        const ScreenTitle(
          title: "Skills",
          margin: EdgeInsets.all(16),
          dark: true,
        ),
        IntrinsicHeight(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Spacer(
                flex: 1,
              ),
              Expanded(
                flex: 2,
                child: _buildSkillCard(
                  context,
                  flutterSkill,
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(16),
                    bottomLeft: Radius.circular(16),
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: _buildSkillCard(
                  context,
                  androidSkill,
                ),
              ),
              Expanded(
                flex: 2,
                child: _buildSkillCard(
                  context,
                  firebaseSkill,
                  borderRadius: const BorderRadius.only(
                    topRight: Radius.circular(16),
                    bottomRight: Radius.circular(16),
                  ),
                ),
              ),
              const Spacer(
                flex: 1,
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget buildMobileLayout(BuildContext context, Size screenSize) {
    final border = Border.all(width: 1, color: Theme.of(context).canvasColor);
    final borderRadius = BorderRadius.circular(16);

    return Container(
      color: Theme.of(context).backgroundColor,
      constraints: BoxConstraints(minHeight: screenSize.height),
      child: Column(
        children: [
          const ScreenTitle(
            title: 'Skills',
            dark: true,
            margin: EdgeInsets.all(16),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            physics: const BouncingScrollPhysics(),
            child: Center(
              child: IntrinsicHeight(
                child: Row(
                  children: [
                    _buildSkillCard(
                      context,
                      flutterSkill,
                      border: border,
                      borderRadius: borderRadius,
                    ),
                    const SizedBox(
                      width: 16,
                    ),
                    _buildSkillCard(
                      context,
                      androidSkill,
                      border: border,
                      borderRadius: borderRadius,
                    ),
                    const SizedBox(
                      width: 16,
                    ),
                    _buildSkillCard(
                      context,
                      firebaseSkill,
                      border: border,
                      borderRadius: borderRadius,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSkillCard(BuildContext context, Skill skill,
      {BoxConstraints? constraints,
      BoxBorder? border,
      BorderRadius? borderRadius}) {
    final logoSize = getValueForScreenType<double>(
      context: context,
      mobile: 70,
      tablet: 90,
      desktop: 110,
    );
    final titleTextSize = getValueForScreenType<double>(
      context: context,
      mobile: 20,
      tablet: 23,
      desktop: 26,
    );
    final experienceTextSize = getValueForScreenType<double>(
      context: context,
      mobile: 15,
      tablet: 16,
      desktop: 16,
    );
    final sloganPadding = getValueForScreenType<double>(
      context: context,
      mobile: 16,
      tablet: 32,
      desktop: 64,
    );
    final skillTextSize = getValueForScreenType<double>(
      context: context,
      mobile: 14,
      tablet: 15,
      desktop: 15,
    );

    return Container(
      constraints: constraints,
      padding: const EdgeInsets.only(bottom: 64, right: 8, left: 8),
      decoration: BoxDecoration(
        border: border,
        color: Theme.of(context).cardColor,
        borderRadius: borderRadius,
        boxShadow: const [
          BoxShadow(color: Colors.black12, blurRadius: 3),
        ],
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(32.0),
            child: Image.asset(
              skill.logo,
              height: logoSize,
              width: logoSize,
            ),
          ),
          Text(
            skill.title,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: titleTextSize,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 12,
          ),
          Text(
            skill.experience,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Theme.of(context).canvasColor,
              fontSize: experienceTextSize,
            ),
          ),
          Container(
            height: 125,
            width: 300,
            padding: EdgeInsets.symmetric(horizontal: sloganPadding),
            child: Center(
              child: Text(
                skill.slogan,
                maxLines: 3,
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Text(
            "Skills",
            style: TextStyle(
              color: Theme.of(context).canvasColor,
              fontSize: titleTextSize,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 12,
          ),
          ...skill.skills
              .map(
                (e) => Padding(
                  padding: const EdgeInsets.all(6.0),
                  child: Text(
                    e,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: skillTextSize,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              )
              .toList()
        ],
      ),
    );
  }
}
