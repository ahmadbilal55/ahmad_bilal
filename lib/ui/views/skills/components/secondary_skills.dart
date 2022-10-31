import 'package:ahmad_bilal/app/assets.dart';
import 'package:flutter/material.dart';

import 'skill_item.dart';

class SecondarySkills extends StatelessWidget {
  const SecondarySkills({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: const BoxConstraints(maxWidth: 1200),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text('Secondary Skills',style: Theme.of(context).textTheme.headline1,),
          ),
          SizedBox(
            height: 200,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              itemCount: 3,
              itemBuilder: (context, index) => Padding(
                padding: const EdgeInsets.all(8.0),
                child: SkillItem(skill: skills[index+3]),
              ),
            ),
          ),
        ],
      ),
    );
  }
}