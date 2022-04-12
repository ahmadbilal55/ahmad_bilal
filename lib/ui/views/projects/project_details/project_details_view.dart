import 'package:ahmad_bilal/app/utils/theme_manager.dart';
import 'package:ahmad_bilal/models/project_model.dart';
import 'package:ahmad_bilal/ui/views/projects/project_details/project_details_viewmodel.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class ProjectDetailsView extends StatelessWidget {
  const ProjectDetailsView({Key? key, required this.project}) : super(key: key);
  final ProjectModel project;

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return ViewModelBuilder<ProjectDetailsViewModel>.reactive(
      builder: (context, model, child) => Scaffold(
        backgroundColor: MyThemeData.backgroundColor,
        body: SafeArea(
          child: Stack(
            children: [
              slider(screenHeight, screenWidth, model),
              header(model),
            ],
          ),
        ),
      ),
      viewModelBuilder: () => ProjectDetailsViewModel(),
    );
  }

  Widget slider(
      double screenHeight, double screenWidth, ProjectDetailsViewModel model) {
    return SizedBox(
      height: screenHeight,
      width: screenWidth,
      child: CarouselSlider.builder(
        itemCount: project.screenshots.length,
        itemBuilder: (context, index, _) => Column(
          children: [
            screenShot(index, screenHeight),
            description(model, screenHeight, screenWidth, index)
          ],
        ),
        carouselController: model.controller,
        options: CarouselOptions(
          enlargeCenterPage: true,
          scrollPhysics: const NeverScrollableScrollPhysics(),
          onPageChanged: model.setCurrentIndex,
        ),
      ),
    );
  }

  Widget description(
    ProjectDetailsViewModel model,
    double screenHeight,
    double screenWidth,
    int index,
  ) {
    return Container(
      margin: const EdgeInsets.all(16),
      padding: const EdgeInsets.all(16),
      constraints: BoxConstraints(
        minHeight: screenHeight * 0.5,
        minWidth: screenWidth * 0.5,
      ),
      decoration: BoxDecoration(
        border: Border.all(color: project.projectPrimaryColor),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          model.currentIndex == index
              ? IconButton(
                  onPressed: () => model.moveForward(false),
                  icon: const Icon(Icons.arrow_back_ios),
                )
              : const SizedBox(),
          SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  project.screenshots[model.currentIndex].title,
                  style: TextStyle(
                    color: project.projectPrimaryColor,
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    fontFamily: MyThemeData.defaultFont,
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                Text(
                  project.screenshots[model.currentIndex].description,
                  style: const TextStyle(
                    color: MyThemeData.primaryColor,
                    fontSize: 16,
                    fontFamily: MyThemeData.defaultFont,
                  ),
                ),
              ],
            ),
          ),
          model.currentIndex == index
              ? IconButton(
                  onPressed: () => model.moveForward(true),
                  icon: const Icon(Icons.arrow_forward_ios),
                )
              : const SizedBox(),
        ],
      ),
    );
  }

  Image screenShot(int index, double screenHeight) {
    return Image.asset(
      project.screenshots[index].path,
      height: screenHeight * 0.3,
    );
  }

  Widget header(ProjectDetailsViewModel model) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            MyThemeData.primaryColor.withOpacity(0.4),
            MyThemeData.primaryColor.withOpacity(0),
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
                  fontFamily: MyThemeData.defaultFont,
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
