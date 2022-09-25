import 'package:ahmad_bilal/ui/views/projects/components/and.widget.dart';
import 'package:ahmad_bilal/ui/views/projects/components/projects_list.widget.dart';
import 'package:ahmad_bilal/ui/widgets/dumb_widgets/screen_title.dart';
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
              constraints: BoxConstraints(
                maxWidth: 1200,
                minHeight: screenHeight,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const ScreenTitle(title: 'Projects'),
                  const ProjectsListWidget(),
                  const SizedBox(height: 16),
                  const AndWidget(),
                  Padding(
                    padding: const EdgeInsets.all(16),
                    child: Text(
                      "I have built this website using Flutter.",
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
