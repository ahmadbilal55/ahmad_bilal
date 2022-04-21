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
          isDesktop: true,
        ),
        tablet: buildLayout(
          model,
          context,
          isDesktop: true,
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
      constraints:BoxConstraints(minHeight:  screenHeight),
      child: Column(
        children: [
          title(),
          projectsList(
            context,
            model,
            isDesktop: isDesktop,
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
    final height = getValueForScreenType(
        context: context, mobile: 200, desktop: 340, tablet: 300);
    return Scrollbar(
      controller: model.scrollController,
      thickness: isDesktop ? 10 : 0,
      interactive: false,
      radius: Radius.zero,
      child: Center(
        child: SizedBox(
          height: height.toDouble(),
          child: ListView.builder(
            controller: model.scrollController,
            scrollDirection: Axis.horizontal,
            itemCount: projects.length,
            itemBuilder: (context, index) => buildProjectCard(
              context,
              model,
              projects[index],
              onTap: model.onTapProject,
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
  }) {
    final cardSize = getValueForScreenType(
        context: context, mobile: 200, desktop: 350, tablet: 250);
    final imageSize = getValueForScreenType(
        context: context, mobile: 50, desktop: 150, tablet:100 );

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
          width: cardSize.toDouble(),
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: MyThemeData.white,
            border: Border.all(color: project.projectPrimaryColor),
            borderRadius: BorderRadius.circular(8),
            boxShadow: [
              BoxShadow(
                color: elevated
                    ? project.projectPrimaryColor.withOpacity(0.2)
                    : MyThemeData.shadowColor,
                blurRadius: elevated ? 4 : 2,
                spreadRadius: elevated ? 12 : 2,
                offset: elevated ? const Offset(0, 0) : const Offset(4, 4),
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
                    height: imageSize.toDouble(),
                    width: imageSize.toDouble(),
                  ),
                ),
              ),
              Hero(
                tag: project.title,
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
