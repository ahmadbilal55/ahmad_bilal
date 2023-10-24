import 'package:ahmad_bilal/app/extensions.dart';
import 'package:ahmad_bilal/models/project_model.dart';
import 'package:ahmad_bilal/ui/views/project_details/widgets/content/project_content_item.dart';
import 'package:flutter/material.dart';

import 'bullet_list.widget.dart';

class DesktopTabletLayout extends StatelessWidget {
  const DesktopTabletLayout({Key? key, required this.project}) : super(key: key);

  final ProjectModel project;

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: screenWidth * 0.3,
          child: ProjectContentItem(
            showUpDelay: 300,
            title: 'Description',
            color: project.projectPrimaryColor,
            child: Text(
              project.description,
              maxLines: 4,
              style: context.theme.textTheme.body.body.copyWith(color: context.theme.labels.primary,)
            ),
          ),
        ),
        SizedBox(
          width: screenWidth * 0.3,
          child: ProjectContentItem(
            showUpDelay: 400,
            title: 'Tech Stack & Features',
            color: project.projectPrimaryColor,
            child: BulletListWidget(
              list: project.techStack,
            ),
          ),
        ),
        SizedBox(
          width: screenWidth * 0.3,
          child: ProjectContentItem(
            showUpDelay: 500,
            color: project.projectPrimaryColor,
            title: 'Platforms',
            child: BulletListWidget(list: project.platforms),
          ),
        ),
      ],
    );
  }
}
