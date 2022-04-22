import 'package:ahmad_bilal/app/assets.dart';
import 'package:ahmad_bilal/app/utils/strings.dart';
import 'package:ahmad_bilal/app/utils/theme_manager.dart';
import 'package:ahmad_bilal/models/project_model.dart';
import 'package:ahmad_bilal/ui/views/projects/projects_viewmodel.dart';
import 'package:ahmad_bilal/ui/widgets/dumb_widgets/screen_title.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:stacked/stacked.dart';

class ProjectsView extends StatelessWidget {
  const ProjectsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<ProjectsViewModel>.reactive(
      builder: (context, model, child) => ScreenTypeLayout(
        mobile: buildLayout(
          model,
          context,
        ),
        tablet: buildLayout(
          model,
          context,
        ),
        desktop: buildLayout(
          model,
          context,
          isDesktop: true,
        ),
      ),
      viewModelBuilder: () => ProjectsViewModel(),
    );
  }

  Widget buildLayout(ProjectsViewModel model, BuildContext context,
      {bool isDesktop = false}) {
    final screenHeight = MediaQuery.of(context).size.height;
    return Container(
      color: MyThemeData.white,
      constraints: BoxConstraints(
        minHeight: screenHeight - screenHeight * 0.28,
      ),
      child: Column(
        children: [
          title(),
          Align(
            alignment: Alignment.center,
            child: projectsList(
              context,
              model,
              isDesktop: isDesktop,
            ),
          ),
          andWidget(),
          thisProjectText(context)
        ],
      ),
    );
  }

  ScreenTitle title() {
    return const ScreenTitle(
      title: Strings.projects,
      dark: true,
      margin: EdgeInsets.all(16),
    );
  }

  Widget projectsList(BuildContext context, ProjectsViewModel model,
      {bool isDesktop = false}) {
    final height = getValueForScreenType<double>(
        context: context, mobile: 280, desktop: 340, tablet: 300);
    return Scrollbar(
      controller: model.scrollController,
      thickness: isDesktop ? 10 : 0,
      interactive: false,
      radius: Radius.zero,
      child: Center(
        child: SizedBox(
          height: height,
          child: ListView.builder(
            controller: model.scrollController,
            scrollDirection: Axis.horizontal,
            itemCount: projects.length,
            itemBuilder: (context, index) => buildProjectCard(
              context,
              model,
              projects[index],
              onTap: model.onTapProject,
              isDesktop: isDesktop,
              elevated: model.elevateIndex == index,
              index: index,
            ),
          ),
        ),
      ),
    );
  }

  Row andWidget() {
    return Row(
      children: [
        Expanded(
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 16),
            height: 4,
            width: double.infinity,
            decoration: BoxDecoration(
              color: MyThemeData.shadowColor,
              borderRadius: BorderRadius.circular(2),
            ),
          ),
        ),
        const Text(
          "AND",
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w500,
            color: MyThemeData.primaryColor,
          ),
        ),
        Expanded(
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 16),
            height: 4,
            width: double.infinity,
            decoration: BoxDecoration(
              color: MyThemeData.shadowColor,
              borderRadius: BorderRadius.circular(2),
            ),
          ),
        ),
      ],
    );
  }

  Widget buildProjectCard(
    BuildContext context,
    ProjectsViewModel model,
    ProjectModel project, {
    Function(ProjectModel)? onTap,
    bool elevated = false,
    int index = 0,
    bool isDesktop = false,
  }) {
    final cardSize = getValueForScreenType<double>(
      context: context,
      mobile: 200,
      desktop: 350,
      tablet: 250,
    );
    final imageSize = getValueForScreenType<double>(
      context: context,
      mobile: 50,
      desktop: 150,
      tablet: 100,
    );
    final blurRadius = getValueForScreenType<double>(
      context: context,
      mobile: 4,
      desktop: 8,
      tablet: 12,
    );
    final blurSpread = getValueForScreenType<double>(
      context: context,
      mobile: 2,
      desktop: 4,
      tablet: 6,
    );
    final shadowOffset = getValueForScreenType<Offset>(
        context: context,
        mobile: const Offset(1, 1),
        desktop: const Offset(2, 2),
        tablet: const Offset(4, 4));

    return MouseRegion(
      onExit: (e) => model.mouseEnter(null),
      onEnter: (e) => model.mouseEnter(index),
      child: GestureDetector(
        onTapUp: (e) => model.mouseEnter(index),
        onTapDown: (e) => model.mouseEnter(null),
        onTap: onTap != null ? () => onTap(project) : null,
        child: AnimatedContainer(
          margin: EdgeInsets.fromLTRB(
            index == 0 ? 16 : 8,
            14,
            index == projects.length - 1 ? 16 : 8,
            14,
          ),
          duration: const Duration(milliseconds: 100),
          width: cardSize,
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: MyThemeData.white,
            border: Border.all(color: project.projectPrimaryColor),
            borderRadius: BorderRadius.circular(8),
            boxShadow: [
              BoxShadow(
                color: elevated && isDesktop
                    ? project.projectPrimaryColor.withOpacity(0.2)
                    : MyThemeData.shadowColor,
                blurRadius: elevated ? blurRadius : 2,
                spreadRadius: elevated ? blurSpread : 2,
                offset:
                    isDesktop & elevated ? const Offset(0, 0) : shadowOffset,
              ),
            ],
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Hero(
                  tag: "${project.title}:${project.logoPath}",
                  child: Image.asset(
                    project.logoPath,
                    height: imageSize,
                    width: imageSize,
                  ),
                ),
              ),
              Hero(
                tag: project.title,
                child: ConstrainedBox(
                  constraints: const BoxConstraints(minWidth: 90),
                  child: Text(
                    project.title,
                    style: TextStyle(
                      fontFamily: MyThemeData.defaultFont,
                      color: project.projectPrimaryColor,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              Text(
                project.description,
                style: const TextStyle(
                  color: MyThemeData.primaryColor,
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const Divider(),
              Center(
                child: Text(
                  Strings.viewMore,
                  style: TextStyle(
                    color: project.projectPrimaryColor,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget thisProjectText(BuildContext context) {
    final padding = getValueForScreenType<EdgeInsets>(
      context: context,
      mobile: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      tablet: const EdgeInsets.all(16),
      desktop: const EdgeInsets.all(32),
    );
    return Padding(
      padding: padding,
      child: Text(
        "I have built this website using Flutter Web.",
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 18,
          color: MyThemeData.primaryColor.withOpacity(0.5),
        ),
      ),
    );
  }
}
