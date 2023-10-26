import 'package:ahmad_bilal/app/assets.dart';
import 'package:ahmad_bilal/ui/widgets/smart_widgets/project_item/project_item.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import '../projects_view_model.dart';

class ProjectsListWidget extends ViewModelWidget<ProjectsViewModel> {
  const ProjectsListWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, ProjectsViewModel viewModel) {
    return ConstrainedBox(
      constraints: const BoxConstraints(
        minHeight: 150,
        maxHeight: 210,
      ),
      child: Scrollbar(
        controller: viewModel.scrollController,
        child: ListView.builder(
          controller: viewModel.scrollController,
          shrinkWrap: true,
          itemCount: projects.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (_, index) => ProjectItem(
            project: projects[index],
            margin: EdgeInsets.only(
                right: 16, left: index == 0 ? 16 : 0, bottom: 10, top: 10),
          ),
        ),
      ),
    );
  }
}
