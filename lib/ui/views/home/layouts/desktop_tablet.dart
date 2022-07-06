import 'package:ahmad_bilal/ui/views/home_intro/home_intro_view.dart';
import 'package:ahmad_bilal/ui/views/projects/projects_view.dart';
import 'package:ahmad_bilal/ui/views/home/components/home_drawer.dart';
import 'package:flutter/material.dart';

class DesktopTabletLayout extends StatelessWidget {
  const DesktopTabletLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const HomeDrawer(),
        Expanded(
          child: SingleChildScrollView(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: const [
                  HomeIntroView(),
                  ProjectsView(),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
