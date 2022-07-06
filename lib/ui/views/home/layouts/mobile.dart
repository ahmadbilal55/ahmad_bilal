import 'package:ahmad_bilal/ui/views/home/home_view_model.dart';
import 'package:ahmad_bilal/ui/views/home_intro/home_intro_view.dart';
import 'package:ahmad_bilal/ui/views/projects/projects_view.dart';
import 'package:ahmad_bilal/ui/widgets/dumb_widgets/contact.dart';
import 'package:flutter/material.dart';

class MobileLayout extends StatelessWidget {
  const MobileLayout({Key? key, required this.model}) : super(key: key);

  final HomeViewModel model;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const HomeIntroView(),
          const ProjectsView(),
          Contact(
            onTapUpwork: model.openUpwork,
            onTapLinkedIn: model.openLinkedIn,
            onTapTwitter: model.openTwitter,
            onTapGitHub: model.openGitHub,
          ),
          const SizedBox(height: 16)
        ],
      ),
    );
  }
}
