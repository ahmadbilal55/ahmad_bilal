import 'package:ahmad_bilal/app/extensions.dart';
import 'package:ahmad_bilal/ui/views/projects/widgets/and.widget.dart';
import 'package:ahmad_bilal/ui/views/projects/widgets/projects_list.widget.dart';
import 'package:ahmad_bilal/ui/widgets/dumb_widgets/screen_title.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'projects_view_model.dart';

class ProjectsView extends StackedView<ProjectsViewModel>{

  const ProjectsView({Key? key}) : super(key: key);

  @override
  Widget builder(BuildContext context, ProjectsViewModel viewModel, Widget? child) {
    var screenHeight = MediaQuery.of(context).size.height;
    return Container(
      color: context.theme.backgrounds.primary,
      height: screenHeight,
      width: double.infinity,
      child: Center(
        child: ConstrainedBox(
          constraints: BoxConstraints(
            maxWidth: 1400,
            minHeight: screenHeight,
          ),
          child: const Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ScreenTitle(title: 'Projects'),
              ProjectsListWidget(),
              AndWidget(),
            ],
          ),
        ),
      ),
    );
  }

  @override
  void onViewModelReady(ProjectsViewModel viewModel) {
    viewModel.onViewModelReady();
    super.onViewModelReady(viewModel);
  }

  @override
  ProjectsViewModel viewModelBuilder(BuildContext context) =>ProjectsViewModel();

}
