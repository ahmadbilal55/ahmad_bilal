import 'package:ahmad_bilal/models/project_model.dart';
import 'package:ahmad_bilal/ui/views/project_details/widgets/content/project_content_item.dart';
import 'package:flutter/material.dart';

import 'bullet_list.widget.dart';

class MobileLayout extends StatelessWidget {
  const MobileLayout({Key? key, required this.project}) : super(key: key);

  final ProjectModel project;

  @override
  Widget build(BuildContext context) {
    var projectPrimaryColor = project.projectPrimaryColor;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ProjectContentItem(
          showUpDelay: 300,
          title: 'Description',
          color: projectPrimaryColor,
          child: Text(
            project.description,
            maxLines: 4,
          ),
        ),
        const SizedBox(
          height: 16,
        ),
        ProjectContentItem(
          showUpDelay: 400,
          title: 'Tech Stack',
          color: projectPrimaryColor,
          child: BulletListWidget(
            list: project.techStack,
          ),
        ),
        const SizedBox(
          height: 16,
        ),
        ProjectContentItem(
          showUpDelay: 500,
          title: 'Platforms',
          color: projectPrimaryColor,
          child: BulletListWidget(
            list: project.platforms,
          ),
        ),
      ],
    );
  }
}
