import 'package:ahmad_bilal/app/extensions.dart';
import 'package:ahmad_bilal/models/skill_model.dart';
import 'package:flutter/material.dart';

class SkillItem extends StatelessWidget {
  const SkillItem({Key? key, required this.skill}) : super(key: key);
  final Skill skill;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 300,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            skill.logo,
            height: 50,
            width: 50,
            fit: BoxFit.contain,
          ),
          Text(
            skill.title,
            style: context.theme.textTheme.headlines.headlineBold.copyWith(color: context.theme.labels.primary),
          ),
          Text(
            skill.slogan,
            style: context.theme.textTheme.body.body.copyWith(color: context.theme.labels.primary),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
