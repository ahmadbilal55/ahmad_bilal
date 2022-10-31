import 'package:ahmad_bilal/models/project_model.dart';
import 'package:ahmad_bilal/ui/views/project_details/project_details_viewmodel.dart';
import 'package:flutter/material.dart';

class ProjectHeader extends StatelessWidget {
  const ProjectHeader({Key? key, required this.model, required this.project}) : super(key: key);

  final ProjectDetailsViewModel model;
  final ProjectModel project;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      child: Row(
        children: [
          IconButton(
            onPressed: model.goBack,
            icon: Icon(
              Icons.arrow_back,
              color: project.projectPrimaryColor,
            ),
          ),
          const SizedBox(
            width: 16,
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(4),
            child: Image.asset(
              project.logoPath,
              height: 36,
            ),
          ),
          const SizedBox(
            width: 16,
          ),
          Text(
            project.title,
            style: TextStyle(
              color: project.projectPrimaryColor,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
