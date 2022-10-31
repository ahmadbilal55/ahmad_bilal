import 'package:ahmad_bilal/models/project_model.dart';
import 'package:ahmad_bilal/ui/views/project_details/widgets/project_header.widget.dart';
import 'package:ahmad_bilal/ui/views/project_details/widgets/screenshots/screenshots.widget.dart';
import 'package:ahmad_bilal/ui/views/project_details/project_details_viewmodel.dart';
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
        backgroundColor: Theme.of(context).colorScheme.background,
        body: ScreenTypeLayout(
          mobile: body(context, model),
          tablet: body(context, model),
          desktop: body(context, model),
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
