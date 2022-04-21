import 'package:ahmad_bilal/app/assets.dart';
import 'package:ahmad_bilal/app/utils/theme_manager.dart';
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
      color: MyThemeData.backgroundColor,
      padding: const EdgeInsets.all(16),
      child: ScreenTypeLayout(
        mobile: const SizedBox(),
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
                  const BorderRadius.only(
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
                  const BorderRadius.only(
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

  Widget _buildSkillCard(BuildContext context, Skill skill,
      [BorderRadius? borderRadius]) {
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
      padding: const EdgeInsets.only(bottom: 64),
      decoration: BoxDecoration(
        color: Colors.white,
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
              color: Theme.of(context).primaryColor,
              fontSize: experienceTextSize,
            ),
          ),
          Container(
            height: 125,
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
              color: Theme.of(context).primaryColor,
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
