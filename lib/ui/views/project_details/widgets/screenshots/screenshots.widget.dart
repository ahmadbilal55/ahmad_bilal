import 'package:ahmad_bilal/models/project_model.dart';
import 'package:ahmad_bilal/ui/views/project_details/project_details_viewmodel.dart';
import 'package:flutter/material.dart';

import 'screenshots_frame.widget.dart';
import 'screenshots_slider.dart';

class ScreenshotsWidget extends StatelessWidget {
  const ScreenshotsWidget({
    Key? key,
    required this.project,
    required this.model,
  }) : super(key: key);

  final ProjectModel project;
  final ProjectDetailsViewModel model;

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;

    return Container(
      padding: const EdgeInsets.all(16),
      height: screenHeight * 0.5,
      width: double.infinity,
      color: project.projectPrimaryColor.withOpacity(0.2),
      child: Stack(
        alignment: Alignment.center,
        children: [
          ScreenshotsSlider(
            model: model,
            screenshots: project.screenshots,
          ),
          ScreenshotsFrame(
            color: project.projectPrimaryColor,
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: IconButton(
              onPressed: () => model.changePage(forward: false),
              icon: Icon(
                Icons.arrow_back_ios,
                color: project.projectPrimaryColor,
              ),
            ),
          ),
          Align(
            alignment: Alignment.centerRight,
            child: IconButton(
              onPressed: () => model.changePage(forward: true),
              icon: Icon(
                Icons.arrow_forward_ios,
                color: project.projectPrimaryColor,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
