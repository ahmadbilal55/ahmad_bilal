import 'package:ahmad_bilal/app/utils/paths.dart';
import 'package:ahmad_bilal/app/utils/strings.dart';
import 'package:ahmad_bilal/ui/views/home_intro/home_intro_view_model.dart';
import 'package:ahmad_bilal/ui/widgets/dumb_widgets/background_image.dart';
import 'package:ahmad_bilal/ui/widgets/dumb_widgets/contact.dart';
import 'package:ahmad_bilal/ui/widgets/dumb_widgets/profile_image.dart';
import 'package:ahmad_bilal/ui/widgets/dumb_widgets/start_project.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class DesktopTabletLayout extends StatelessWidget {
  const DesktopTabletLayout({Key? key, required this.model}) : super(key: key);

  final HomeIntroViewModel model;

  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;
    return ConstrainedBox(
      constraints: BoxConstraints(minHeight: screenHeight),
      child: Center(
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
                            Contact(
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
            ProfileImage(),
            Center(
              child: ConstrainedBox(
                constraints: BoxConstraints(maxWidth: 1200),
                child: Row(
                  children: [
                    ConstrainedBox(
                      constraints: BoxConstraints(maxWidth: 600),
                      child: Text(
                        Strings.intro,
                        style: Theme.of(context).textTheme.bodyText2,
                      ),
                    ),
                    Expanded(
                      child: Align(
                        alignment: Alignment.centerRight,
                        child: LottieBuilder.asset(
                          Paths.developerAnimation,
                          height: screenHeight * 0.35,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
