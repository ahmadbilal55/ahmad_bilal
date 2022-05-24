import 'package:ahmad_bilal/models/project_model.dart';
import 'package:ahmad_bilal/ui/views/projects/project_details/project_details_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class ProjectDetailsView extends StatelessWidget {
  const ProjectDetailsView({Key? key, required this.project}) : super(key: key);
  final ProjectModel project;

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    return ViewModelBuilder<ProjectDetailsViewModel>.reactive(
      builder: (context, model, child) => Scaffold(
        backgroundColor: Theme.of(context).backgroundColor,
        body: SafeArea(
          child: Stack(
            children: [
              Center(
                child: screenshots(model, screenHeight),
              ),
              header(context,model),
            ],
          ),
        ),
      ),
      viewModelBuilder: () => ProjectDetailsViewModel(),
    );
  }

  Widget screenshots(
    ProjectDetailsViewModel model,
    double screenHeight,
  ) {
    return Stack(
      children: [
        SingleChildScrollView(
          controller: model.controller,
          scrollDirection: Axis.horizontal,
          child: Align(
            alignment: Alignment.center,
            child: Row(
              children: [
                for (int index = 0; index < project.screenshots.length; index++)
                  Container(
                    margin: const EdgeInsets.all(16),
                    constraints: BoxConstraints(
                      minHeight: screenHeight * 0.5,
                    ),
                    decoration: BoxDecoration(
                      border: Border.all(color: project.projectPrimaryColor),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(12),
                      child: Image.asset(
                        project.screenshots[index],
                        height: screenHeight * 0.3,
                      ),
                    ),
                  ),
              ],
            ),
          ),
        ),
        Align(
          alignment: Alignment.centerLeft,
          child: Material(
            color: Colors.transparent,
            child: IconButton(
              onPressed: () => model.scrollTo(-50),
              icon: const Icon(Icons.arrow_back_ios),
            ),
          ),
        ),
        Align(
          alignment: Alignment.centerRight,
          child: Material(
            borderRadius: BorderRadius.circular(50),
            color: Colors.transparent,
            child: IconButton(
              onPressed: () => model.scrollTo(50),
              icon: const Icon(Icons.arrow_forward_ios),
            ),
          ),
        ),
      ],
    );
  }

  Widget header(BuildContext context,ProjectDetailsViewModel model) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Theme.of(context).primaryColor.withOpacity(0.4),
            Theme.of(context).primaryColor.withOpacity(0),
          ],
        ),
      ),
      child: Row(
        children: [
          IconButton(
            onPressed: model.goBack,
            icon: const Icon(Icons.arrow_back),
          ),
          const SizedBox(
            width: 16,
          ),
          Hero(
            tag: "${project.title}:${project.logoPath}",
            child: Material(
              color: Colors.transparent,
              child: Image.asset(
                project.logoPath,
                height: 36,
              ),
            ),
          ),
          const SizedBox(
            width: 16,
          ),
          Hero(
            tag: project.title,
            child: Material(
              color: Colors.transparent,
              child: Text(
                project.title,
                style: TextStyle(
                  color: project.projectPrimaryColor,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
