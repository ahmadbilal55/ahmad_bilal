import 'package:ahmad_bilal/ui/widgets/dumb_widgets/home_drawer.dart';

import 'package:flutter/material.dart';

import '../home_intro/home_intro_view.dart';
import '../projects/projects_view.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    return Scaffold(
      backgroundColor: colorScheme.background,
      body: Row(
        children: [
          const HomeDrawer(),
          Expanded(
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
        ],
      ),
    );
  }

}

