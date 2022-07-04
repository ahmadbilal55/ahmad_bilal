import 'package:ahmad_bilal/models/project_model.dart';
import 'package:ahmad_bilal/ui/views/projects/project_details/project_details_view.dart';
import 'package:animations/animations.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'project_item_view_model.dart';

class ProjectItem extends StatelessWidget {
  const ProjectItem(
      {Key? key, required this.project, this.margin = const EdgeInsets.all(0)})
      : super(key: key);

  final ProjectModel project;
  final EdgeInsets margin;

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<ProjectItemViewModel>.reactive(
      onModelReady: (m) => m.onModelReady(project),
      viewModelBuilder: () => ProjectItemViewModel(),
      builder: (context, model, _) => Padding(
        padding: margin,
        child: InkWell(
          ///Added to change the cursor from pointer to hand to indicate a possible button click
          onTap: (){},
          child: MouseRegion(
            onEnter: (_) => model.setHovering(true),
            onExit: (_) => model.setHovering(false),
            child: OpenContainer<bool>(
              clipBehavior: Clip.antiAlias,
              closedShape:
                  RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
              closedColor: Colors.transparent,
              openBuilder: (context, _) => ProjectDetailsView(project: project),
              closedBuilder: (context, _) => Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    AspectRatio(
                      aspectRatio: 375 / 821,
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.transparent,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(8),
                          child: Image.asset(
                            project.splashPath,
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                    ),
                    AnimatedOpacity(
                      duration: const Duration(milliseconds: 200),
                      opacity: model.hovering ? 1 : 0,
                      child: AspectRatio(
                        aspectRatio: 375 / 821,
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: project.projectPrimaryColor.withOpacity(0.6),
                          ),
                          padding: const EdgeInsets.all(16),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Hero(
                                tag: "${project.title}:${project.logoPath}",
                                child: CircleAvatar(
                                  backgroundImage: AssetImage(project.logoPath),
                                  radius: 15,
                                ),
                              ),
                              AnimatedPadding(
                                curve: Curves.fastOutSlowIn,
                                duration: const Duration(milliseconds: 300),
                                padding: EdgeInsets.only(
                                  top: model.hovering ? 8 : 32,
                                ),
                                child: Hero(
                                  tag: project.title,
                                  child: Text(
                                    project.title,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    AnimatedPositioned(
                      curve: Curves.fastOutSlowIn,
                      duration: const Duration(milliseconds: 300),
                      bottom: model.hovering ? 20 : -20,
                      child: const Text(
                        "View details",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
