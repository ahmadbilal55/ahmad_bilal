import 'package:ahmad_bilal/ui/views/home/components/intro.widget.dart';
import 'package:ahmad_bilal/ui/views/home/home_viewmodel.dart';
import 'package:ahmad_bilal/ui/widgets/dumb_widgets/background_image.dart';
import 'package:ahmad_bilal/ui/widgets/dumb_widgets/contact_row.dart';
import 'package:ahmad_bilal/ui/widgets/dumb_widgets/profile_image.dart';
import 'package:ahmad_bilal/ui/widgets/dumb_widgets/start_project.dart';
import 'package:flutter/material.dart';

class DesktopTabletLayout extends StatelessWidget {
  const DesktopTabletLayout({Key? key, required this.model}) : super(key: key);

  final HomeViewModel model;

  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;
    return ConstrainedBox(
      constraints: BoxConstraints(minHeight: screenHeight),
      child: Column(
        children: [
          SizedBox(
            height: 250,
            width: double.infinity,
            child: Stack(
              fit: StackFit.expand,
              alignment: Alignment.topCenter,
              children: [
                const BackgroundImage(),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: ConstrainedBox(
                    constraints: const BoxConstraints(maxWidth: 1200),
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          StartProject(
                            onTapHireAhmad: model.sendEmail,
                            alignment: CrossAxisAlignment.start,
                          ),
                          ContactRow(
                            onTapUpwork: model.openUpwork,
                            onTapLinkedIn: model.openLinkedIn,
                            onTapTwitter: model.openTwitter,
                            onTapGitHub: model.openGitHub,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const ProfileImage(),
          const IntroWidget()
        ],
      ),
    );
  }
}
