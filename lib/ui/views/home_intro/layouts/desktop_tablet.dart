import 'package:ahmad_bilal/ui/views/home_intro/home_intro_view_model.dart';
import 'package:ahmad_bilal/ui/widgets/dumb_widgets/background_image.dart';
import 'package:ahmad_bilal/ui/widgets/dumb_widgets/contact.dart';
import 'package:ahmad_bilal/ui/widgets/dumb_widgets/start_project.dart';
import 'package:flutter/material.dart';

class DesktopTabletLayout extends StatelessWidget {
  const DesktopTabletLayout({Key? key, required this.model}) : super(key: key);

  final HomeIntroViewModel model;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.4,
      width: double.infinity,
      child: Stack(
        fit: StackFit.expand,
        alignment: Alignment.topCenter,
        children: [
          const BackgroundImage(),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                StartProject(
                  onTapHireAhmad: model.sendEmail,
                  alignment: CrossAxisAlignment.start,
                ),
                Contact(
                  onTapUpwork: model.openUpwork,
                  onTapLinkedIn: model.openLinkedIn,
                  onTapTwitter: model.openTwitter,
                  onTapGitHub: model.openGitHub,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
