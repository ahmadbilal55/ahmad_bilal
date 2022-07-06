import 'package:ahmad_bilal/models/project_model.dart';
import 'package:flutter/material.dart';

class ProjectTitle extends StatelessWidget {
  const ProjectTitle({Key? key, required this.project, required this.focused}) : super(key: key);

  final ProjectModel project;
  final bool focused;

  @override
  Widget build(BuildContext context) {
    return  Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Hero(
          tag: "${project.title}:${project.logoPath}",
          child: CircleAvatar(
            backgroundImage:
            AssetImage(project.logoPath),
            radius: 15,
          ),
        ),
        AnimatedPadding(
          curve: Curves.fastOutSlowIn,
          duration: const Duration(milliseconds: 300),
          padding: EdgeInsets.only(
            top: focused ? 8 : 32,
          ),
          child: Hero(
            tag: project.title,
            child: Text(
              project.title,
            ),
          ),
        ),
      ],
    );
  }
}
