import 'package:ahmad_bilal/app/extensions.dart';
import 'package:ahmad_bilal/models/project_model.dart';
import 'package:ahmad_bilal/ui/views/project_details/project_details_viewmodel.dart';
import 'package:ahmad_bilal/ui/views/project_details/widgets/project_header.widget.dart';
import 'package:ahmad_bilal/ui/views/project_details/widgets/screenshots/screenshots.widget.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:stacked/stacked.dart';

import 'widgets/content/project_content.widget.dart';

class ProjectDetailsView extends StatelessWidget {
  const ProjectDetailsView({Key? key, required this.project}) : super(key: key);
  final ProjectModel project;

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<ProjectDetailsViewModel>.reactive(
      builder: (context, model, child) => Scaffold(
        backgroundColor: context.theme.backgrounds.primary,
        body: ScreenTypeLayout.builder(
          mobile: (context) => body(context, model),
          tablet: (context) => body(context, model),
          desktop: (context) => body(context, model),
        ),
      ),
      viewModelBuilder: () => ProjectDetailsViewModel(),
    );
  }

  SafeArea body(BuildContext context, ProjectDetailsViewModel model) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ProjectHeader(
              model: model,
              project: project,
            ),
            ScreenshotsWidget(
              project: project,
              model: model,
            ),
            ProjectContentWidget(
              project: project,
            ),
          ],
        ),
      ),
    );
  }
}
