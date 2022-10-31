import 'package:ahmad_bilal/models/project_model.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

import 'desktop_tablet_layout.dart';
import 'mobile_layout.dart';

class ProjectContentWidget extends StatelessWidget {
  const ProjectContentWidget({Key? key, required this.project}) : super(key: key);

  final ProjectModel project;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: ScreenTypeLayout(
        desktop: DesktopTabletLayout(project:project),
        mobile: MobileLayout(project: project),
        tablet: DesktopTabletLayout(project: project,),
      ),
    );
  }
}
