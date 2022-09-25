import 'package:ahmad_bilal/models/project_model.dart';
import 'package:ahmad_bilal/ui/widgets/smart_widgets/project_item/components/splash.dart';
import 'package:ahmad_bilal/ui/widgets/smart_widgets/project_item/project_item_view_model.dart';
import 'package:flutter/material.dart';

import 'title.dart';

class ProjectContent extends StatelessWidget {
  const ProjectContent({Key? key, required this.project, required this.model})
      : super(key: key);

  final ProjectModel project;
  final ProjectItemViewModel model;

  @override
  Widget build(BuildContext context) {
    final primaryColorLuminance =
        project.projectPrimaryColor.computeLuminance();
    return Stack(
      alignment: Alignment.center,
      children: [
        ProjectSplash(project: project),
        AnimatedOpacity(
          duration: const Duration(milliseconds: 200),
          opacity: model.hovering ? 1 : 0,
          child: AspectRatio(
            aspectRatio: 375 / 821,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: primaryColorLuminance > 0.3
                    ? project.projectPrimaryColor.withOpacity(0.8)
                    : project.projectPrimaryColor.withOpacity(0.5),
              ),
              padding: const EdgeInsets.all(16),
              child: ProjectTitle(
                project: project,
                focused: model.hovering,
              ),
            ),
          ),
        ),
        AnimatedPositioned(
          curve: Curves.fastOutSlowIn,
          duration: const Duration(milliseconds: 300),
          bottom: model.hovering ? 10 : -20,
          child: Text(
            "View details",
            textAlign: TextAlign.center,
            style: TextStyle(
              color:  primaryColorLuminance > 0.3
                  ? Colors.black
                  : Colors.white,
              fontSize: 12,
            ),
          ),
        )
      ],
    );
  }
}
