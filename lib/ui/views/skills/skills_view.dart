import 'package:ahmad_bilal/ui/views/skills/components/primary_skills.dart';
import 'package:ahmad_bilal/ui/views/skills/components/secondary_skills.dart';
import 'package:ahmad_bilal/ui/widgets/dumb_widgets/screen_title.dart';
import 'package:flutter/material.dart';


class SkillsView extends StatelessWidget {
  const SkillsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height:  MediaQuery.of(context).size.height,
      color: Theme.of(context).colorScheme.background,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children:const [
             ScreenTitle(title: 'Skills'),
            PrimarySkills(),
            SecondarySkills(),
          ],
        ),
      ),
    );
  }
}
