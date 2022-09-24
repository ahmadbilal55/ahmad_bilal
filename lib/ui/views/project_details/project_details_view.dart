import 'package:ahmad_bilal/models/project_model.dart';
import 'package:ahmad_bilal/ui/views/project_details/project_details_viewmodel.dart';
import 'package:ahmad_bilal/ui/widgets/smart_widgets/show_up.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:stacked/stacked.dart';

class ProjectDetailsView extends StatelessWidget {
  const ProjectDetailsView({Key? key, required this.project}) : super(key: key);
  final ProjectModel project;

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<ProjectDetailsViewModel>.reactive(
      builder: (context, model, child) => Scaffold(
        backgroundColor: Theme.of(context).colorScheme.background,
        body: ScreenTypeLayout(
          mobile: body(context, model),
          tablet: body(context, model),
          desktop: body(context, model),
        ),
      ),
      viewModelBuilder: () => ProjectDetailsViewModel(),
    );
  }

  SafeArea body(BuildContext context, ProjectDetailsViewModel model) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            header(context, model),
            screenshots(context, model, screenHeight),
            content(screenWidth, context)
          ],
        ),
      ),
    );
  }

  Widget content(double screenWidth, BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: ScreenTypeLayout(
        desktop: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: screenWidth * 0.3,
              child: projectDetailItem(
                context,
                delay: 300,
                title: 'Description',
                value: Text(
                  project.description,
                  maxLines: 4,
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.onBackground,
                  ),
                ),
              ),
            ),
            SizedBox(
              width: screenWidth * 0.3,
              child: projectDetailItem(
                context,
                delay: 400,
                title: 'Tech Stack & Features',
                value: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    for (int index = 0;
                        index < project.techStack.length;
                        index++)
                      Padding(
                        padding: const EdgeInsets.only(bottom: 8.0),
                        child: Text(
                          "•   ${project.techStack[index]}",
                          style: TextStyle(
                            color: Theme.of(context).colorScheme.onBackground,
                          ),
                        ),
                      ),
                  ],
                ),
              ),
            ),
            SizedBox(
              width: screenWidth * 0.3,
              child: projectDetailItem(
                context,
                delay: 500,
                title: 'Platforms',
                value: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    for (int index = 0;
                        index < project.platforms.length;
                        index++)
                      Padding(
                        padding: const EdgeInsets.only(bottom: 8.0),
                        child: Text(
                          "•   ${project.platforms[index]}",
                          style: TextStyle(
                            color: Theme.of(context).colorScheme.onBackground,
                          ),
                        ),
                      ),
                  ],
                ),
              ),
            ),
          ],
        ),
        mobile: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            projectDetailItem(
              context,
              delay: 300,
              title: 'Description',
              value: Text(
                project.description,
                maxLines: 4,
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            projectDetailItem(
              context,
              delay: 400,
              title: 'Tech Stack',
              value: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  for (int index = 0; index < project.techStack.length; index++)
                    Padding(
                      padding: const EdgeInsets.only(bottom: 8.0),
                      child: Text("•   ${project.techStack[index]}"),
                    ),
                ],
              ),
            ),
            SizedBox(
              height: 16,
            ),
            projectDetailItem(
              context,
              delay: 500,
              title: 'Platforms',
              value: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  for (int index = 0; index < project.platforms.length; index++)
                    Padding(
                      padding: const EdgeInsets.only(bottom: 8.0),
                      child: Text("•   ${project.platforms[index]}"),
                    ),
                ],
              ),
            ),
          ],
        ),
        tablet: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: screenWidth * 0.3,
              child: projectDetailItem(
                context,
                delay: 300,
                title: 'Description',
                value: Text(
                  project.description,
                  maxLines: 4,
                ),
              ),
            ),
            SizedBox(
              width: screenWidth * 0.3,
              child: projectDetailItem(
                context,
                delay: 400,
                title: 'Tech Stack',
                value: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    for (int index = 0;
                        index < project.techStack.length;
                        index++)
                      Padding(
                        padding: const EdgeInsets.only(bottom: 8.0),
                        child: Text("•   ${project.techStack[index]}"),
                      ),
                  ],
                ),
              ),
            ),
            SizedBox(
              width: screenWidth * 0.3,
              child: projectDetailItem(
                context,
                delay: 500,
                title: 'Platforms',
                value: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    for (int index = 0;
                        index < project.platforms.length;
                        index++)
                      Padding(
                        padding: const EdgeInsets.only(bottom: 8.0),
                        child: Text("•   ${project.platforms[index]}"),
                      ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget screenshots(
    BuildContext context,
    ProjectDetailsViewModel model,
    double screenHeight,
  ) {
    final screenWidth = MediaQuery.of(context).size.width;
    double viewPortFraction = getValueForScreenType(
      context: context,
      mobile: 1,
      tablet: 1 / 3,
      desktop: 1 / 5,
    );
    return Container(
      padding: const EdgeInsets.all(16),
      height: screenHeight * 0.5,
      width: double.infinity,
      color: project.projectPrimaryColor.withOpacity(0.2),
      child: Stack(
        alignment: Alignment.center,
        children: [
          SizedBox(
            width: screenWidth,
            child: CarouselSlider(
              carouselController: model.carouselController,
              items: [
                for (int index = 0; index < project.screenshots.length; index++)
                  AspectRatio(
                    aspectRatio: 375 / 821,
                    child: Padding(
                      padding: const EdgeInsets.all(3),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(6),
                        child: Image.asset(
                          project.screenshots[index],
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
              ],
              options: CarouselOptions(
                aspectRatio: 375 / 821,
                viewportFraction: viewPortFraction,
                enableInfiniteScroll: true,
                autoPlay: true,
                scrollPhysics: const NeverScrollableScrollPhysics(),
                onPageChanged: model.onPageChanged,
                initialPage: 0,
                pageSnapping: false,
              ),
            ),
          ),
          AspectRatio(
            aspectRatio: 375 / 821,
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  border:
                      Border.all(width: 3, color: project.projectPrimaryColor)),
            ),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: IconButton(
              onPressed: () => model.changePage(false),
              icon: Icon(
                Icons.arrow_back_ios,
                color: project.projectPrimaryColor,
              ),
            ),
          ),
          Align(
            alignment: Alignment.centerRight,
            child: IconButton(
              onPressed: () => model.changePage(true),
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

  Widget header(BuildContext context, ProjectDetailsViewModel model) {
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
          Hero(
            tag: "${project.title}:${project.logoPath}",
            child: Material(
              color: Colors.transparent,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(4),
                child: Image.asset(
                  project.logoPath,
                  height: 36,
                ),
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

  Widget projectDetailItem(BuildContext context,
      {required String title, required Widget value, required int delay}) {
    return ShowUp(
      delay: delay,
      child: IntrinsicHeight(
        child: Row(
          children: [
            VerticalDivider(
              color: project.projectPrimaryColor,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: Theme.of(context).textTheme.headline1?.copyWith(
                          fontSize: 24,
                          color: project.projectPrimaryColor,
                        ),
                  ),
                  const SizedBox(height: 8),
                  value
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
