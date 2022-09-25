import 'package:ahmad_bilal/models/project_model.dart';
import 'package:flutter/material.dart';

class ProjectSplash extends StatelessWidget {
  const ProjectSplash({Key? key, required this.project}) : super(key: key);

  final ProjectModel project;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
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
    );
  }
}
