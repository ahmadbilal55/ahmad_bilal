import 'package:flutter/material.dart';

class ProjectModel {
  final String title;
  final String description;
  final String logoPath;
  final Color projectPrimaryColor;
  final List<Screenshot> screenshots;

  const ProjectModel( {
    required this.projectPrimaryColor,
    required this.logoPath,
    required this.title,
    required this.description,
    required this.screenshots,
  });
}

class Screenshot {
  final String path;
  final String description;

  final String title;

  const Screenshot({
    required this.title,
    required this.path,
    required this.description,
  });
}
