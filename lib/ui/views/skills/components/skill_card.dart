import 'package:ahmad_bilal/app/extensions.dart';
import 'package:ahmad_bilal/models/skill_model.dart';
import 'package:flutter/material.dart';

class SkillCard extends StatelessWidget {
  const SkillCard({Key? key, required this.skill}) : super(key: key);

  final Skill skill;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 320,
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: context.theme.keyGray, width: 0.5),
      ),
      child: Column(
        children: [
          Image.asset(skill.logo,height: 56,),
          const SizedBox(
            height: 20,
          ),
          Text(
            skill.title,
            textAlign: TextAlign.center,
            style: context.theme.textTheme.titles.title2Bold.copyWith(
              color: context.theme.tints.blue,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            skill.slogan,
            textAlign: TextAlign.center,
            style: context.theme.textTheme.body.body.copyWith(
              color: context.theme.labels.secondary,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const Divider(height: 0,),
          const SizedBox(
            height: 20,
          ),
          ...List.generate(
            skill.skills.length,
            (index) => Padding(
              padding: const EdgeInsets.only(bottom: 10.0),
              child: Text(
                skill.skills[index],
                style: context.theme.textTheme.body.body.copyWith(
                  color: context.theme.labels.primary,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
