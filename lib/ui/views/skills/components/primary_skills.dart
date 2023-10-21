import 'package:ahmad_bilal/app/assets.dart';
import 'package:ahmad_bilal/app/extensions.dart';
import 'package:flutter/material.dart';

import 'skill_item.dart';

class PrimarySkills extends StatelessWidget {
  const PrimarySkills({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Text(
            'Primary Skills',
            style: context.theme.textTheme.bigTitles.largeTitle.copyWith(color: context.theme.labels.primary),
          ),
        ),
        SizedBox(
          height: 200,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            shrinkWrap: true,
            itemCount: 3,
            itemBuilder: (context, index) => Padding(
              padding: const EdgeInsets.all(8.0),
              child: SkillItem(skill: skills[index]),
            ),
          ),
        ),
      ],
    );
  }
}
