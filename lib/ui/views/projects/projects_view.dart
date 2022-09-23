import 'package:ahmad_bilal/app/assets.dart';
import 'package:ahmad_bilal/ui/widgets/smart_widgets/project_item/project_item.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'projects_view_model.dart';

class ProjectsView extends StatelessWidget {
  const ProjectsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<ProjectsViewModel>.reactive(
      viewModelBuilder: () => ProjectsViewModel(),
      builder: (context, model, child) {
        var screenHeight = MediaQuery.of(context).size.height;
        return Container(
          color: Theme.of(context).colorScheme.primary.withOpacity(0.1),
          constraints: BoxConstraints(minHeight: screenHeight),
          width: double.infinity,
          child: Center(
            child: ConstrainedBox(
              constraints:
                  BoxConstraints(maxWidth: 1200, minHeight: screenHeight),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Text(
                      "Projects",
                      style: Theme.of(context).textTheme.headline2!.copyWith(
                            color: Theme.of(context).colorScheme.onBackground,
                          ),
                    ),
                  ),
                  SizedBox(
                    height: screenHeight * 0.5,
                    child: ListView.builder(
                      shrinkWrap: true,
                      itemCount: projects.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (_, index) => ProjectItem(
                        focused: model.focused,
                        project: projects[index],
                        margin: EdgeInsets.only(
                            right: index != projects.length - 1 ? 16 : 0,
                            left: index == 0 ? 16 : 0),
                      ),
                    ),
                  ),
                  const SizedBox(height: 16),
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          margin: const EdgeInsets.symmetric(horizontal: 16),
                          height: 1,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: Theme.of(context).colorScheme.outline,
                            borderRadius: BorderRadius.circular(2),
                          ),
                        ),
                      ),
                      Text(
                        "AND",
                        style: Theme.of(context).textTheme.subtitle1,
                      ),
                      Expanded(
                        child: Container(
                          margin: const EdgeInsets.symmetric(horizontal: 16),
                          height: 1,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: Theme.of(context).colorScheme.outline,
                            borderRadius: BorderRadius.circular(2),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16),
                    child: Text(
                      "I have built this website using Flutter Web.",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        color: Theme.of(context).colorScheme.primary,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
