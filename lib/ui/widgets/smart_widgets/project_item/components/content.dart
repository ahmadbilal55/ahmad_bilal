import 'package:ahmad_bilal/app/extensions.dart';
import 'package:ahmad_bilal/models/project_model.dart';
import 'package:flutter/material.dart';

class ProjectContent extends StatelessWidget{
  const ProjectContent({Key? key, required this.project})
      : super(key: key);

  final ProjectModel project;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: project.projectPrimaryColor, width: 0.5),
        color: context.theme.backgrounds.primary
      ),
      child: Column(
        children: [
          Expanded(
            flex: 3,
            child: SizedBox(
              height: 56,
              width: 56,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.asset(
                  project.logoPath,
                ),
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: [
                  Text(
                    project.title,
                    style: context.theme.textTheme.headlines.headlineBold
                        .copyWith(
                      color: project.projectPrimaryColor,
                    ),
                  ),
                  Text(
                    project.description,
                    maxLines: 2,
                    style: context.theme.textTheme.caption.caption1.copyWith(
                      color: context.theme.labels.secondary,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
