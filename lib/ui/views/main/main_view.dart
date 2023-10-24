import 'package:ahmad_bilal/app/extensions.dart';
import 'package:ahmad_bilal/ui/views/home/home_view.dart';
import 'package:ahmad_bilal/ui/views/main/main_viewmodel.dart';
import 'package:ahmad_bilal/ui/views/projects/projects_view.dart';
import 'package:ahmad_bilal/ui/views/skills/skills_view.dart';
import 'package:ahmad_bilal/ui/views/testimonials/testimonials_view.dart';
import 'package:ahmad_bilal/ui/widgets/smart_widgets/dotted_background/dotted_background.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<MainViewModel>.reactive(
      viewModelBuilder: () => MainViewModel(),
      builder: (context, model, child) => Scaffold(
        backgroundColor: context.theme.backgrounds.primary,
        body: SafeArea(
          child: RawKeyboardListener(
            autofocus: true,
            focusNode: model.focusNode,
            onKey: model.handleKeyEvent,
            child: Stack(
              children: [
                const DottedBackground(),
                const HomeIntroView(),
                SingleChildScrollView(
                  controller: model.controller,
                  child:  Center(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(height: context.mediaQuery.size.height,),
                        Divider(height: 0,color: context.theme.tints.blue,),
                        const ProjectsView(),
                        const SkillsView(),
                        const TestimonialsView(),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
