import 'package:ahmad_bilal/ui/views/home_intro/home_intro_view.dart';
import 'package:ahmad_bilal/ui/views/projects/projects_view.dart';
import 'package:ahmad_bilal/ui/views/skills/skills_view.dart';
import 'package:ahmad_bilal/ui/views/testimonials/testimonials_view.dart';
import 'package:flutter/material.dart';

class DesktopTabletLayout extends StatelessWidget {
  const DesktopTabletLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
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
    );
  }
}
