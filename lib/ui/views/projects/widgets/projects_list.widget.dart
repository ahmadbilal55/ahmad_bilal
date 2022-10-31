import 'package:ahmad_bilal/app/assets.dart';
import 'package:ahmad_bilal/ui/widgets/smart_widgets/project_item/project_item.dart';
import 'package:flutter/material.dart';

class ProjectsListWidget extends StatelessWidget {
  const ProjectsListWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    return Column(
      children: [
        SizedBox(
          height: screenHeight * 0.5,
          child: ListView.builder(
            shrinkWrap: true,
            itemCount: projects.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (_, index) => ProjectItem(
              project: projects[index],
              margin: EdgeInsets.only(right: 16, left: index == 0 ? 16 : 0),
            ),
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        Text(
          'Tap to view project details',
          style: TextStyle(
            fontSize: 12,
            fontFamily: 'futura',
            color: Theme.of(context).colorScheme.primary,
          ),
        )
      ],
    );
  }
}
