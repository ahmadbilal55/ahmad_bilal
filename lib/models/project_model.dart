import 'package:flutter/material.dart';

class ProjectModel {
  final String title;
  final String description;
  final String logoPath;
  final Color projectPrimaryColor;
  final List<String> screenshots;

  const ProjectModel( {
    required this.projectPrimaryColor,
    required this.logoPath,
    required this.title,
    required this.description,
    required this.screenshots,
  });
}