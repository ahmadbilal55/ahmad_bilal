import 'package:ahmad_bilal/models/project_model.dart';
import 'package:ahmad_bilal/ui/views/project_details/project_details_view.dart';
import 'package:ahmad_bilal/ui/widgets/smart_widgets/project_item/components/content.dart';
import 'package:animations/animations.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'project_item_view_model.dart';

class ProjectItem extends StatelessWidget {
  const ProjectItem({
    Key? key,
    required this.project,
    this.margin = const EdgeInsets.all(0),
  }) : super(key: key);

  final ProjectModel project;
  final EdgeInsets margin;

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<ProjectItemViewModel>.reactive(
      onViewModelReady: (m) => m.onModelReady(project),
      viewModelBuilder: () => ProjectItemViewModel(),
      builder: (context, model, _) => Padding(
        padding: margin,
        child: InkWell(
          ///Added to change the cursor from pointer to hand to indicate a possible button click
          onTap: () {},
          child: GestureDetector(
            onLongPressStart: (_) => model.setHovering(true),
            onLongPressEnd: (_) => model.setHovering(false),
            child: MouseRegion(
              onEnter: (_) => model.setHovering(true),
              onExit: (_) => model.setHovering(false),
              child: OpenContainer<bool>( closedElevation: model.hovering?8:2,
                clipBehavior: Clip.antiAlias,
                middleColor: Colors.white,
                closedShape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8)),
                closedColor: Colors.transparent,
                openBuilder: (context, _) =>
                    ProjectDetailsView(project: project),
                closedBuilder: (context, _) => ProjectContent(
                  project: project,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
