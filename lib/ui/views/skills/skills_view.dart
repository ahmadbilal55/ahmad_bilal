import 'package:ahmad_bilal/app/assets.dart';
import 'package:ahmad_bilal/app/extensions.dart';
import 'package:ahmad_bilal/ui/views/skills/components/skill_card.dart';
import 'package:ahmad_bilal/ui/widgets/dumb_widgets/screen_title.dart';
import 'package:flutter/material.dart';

class SkillsView extends StatelessWidget {
  const SkillsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenHeight = context.mediaQuery.size.height;
    return Container(
      width: double.infinity,
      color: context.theme.backgrounds.secondary,
      child: ConstrainedBox(
        constraints: BoxConstraints(
          maxWidth: 1400,
          minHeight: screenHeight,
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const ScreenTitle(title: 'Skills'),
              SizedBox(
                height: 600,
                child: Center(
                  child: ListView.builder(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: skills.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: EdgeInsets.only(
                            right: index == skills.length ? 10 : 0.0,
                            left: index == 0 ? 0 : 10),
                        child: SkillCard(skill: skills[index]),
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
