import 'package:flutter/material.dart';

class ProjectModel {
  final String title;
  final String description;
  final String logoPath;
  final String splashPath;
  final Color projectPrimaryColor;
  final List<String> screenshots;
  final List<String> techStack;
  final List<String> platforms;

  const ProjectModel({
    required this.techStack,
    required this.platforms,
    required this.splashPath,
    required this.projectPrimaryColor,
    required this.logoPath,
    required this.title,
    required this.description,
    required this.screenshots,
  });
}
