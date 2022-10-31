import 'package:ahmad_bilal/ui/views/home/home_view.dart';
import 'package:ahmad_bilal/ui/views/main/main_viewmodel.dart';
import 'package:ahmad_bilal/ui/views/projects/projects_view.dart';
import 'package:ahmad_bilal/ui/views/skills/skills_view.dart';
import 'package:ahmad_bilal/ui/views/testimonials/testimonials_view.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    return ViewModelBuilder<MainViewModel>.reactive(
      viewModelBuilder: ()=>MainViewModel(),
      builder:(context,model,child)=> Scaffold(
        backgroundColor: colorScheme.background,
        body: SafeArea(
          child: RawKeyboardListener(
            autofocus: true,
            focusNode: model.focusNode,
            onKey: model.handleKeyEvent,
            child: SingleChildScrollView(
              controller: model.controller,
              child: Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: const [
                    HomeIntroView(),
                    ProjectsView(),
                    SkillsView(),
                    TestimonialsView(),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

}

