import 'package:ahmad_bilal/ui/views/home/components/intro.widget.dart';
import 'package:ahmad_bilal/ui/views/home/home_viewmodel.dart';
import 'package:ahmad_bilal/ui/widgets/dumb_widgets/background_image.dart';
import 'package:ahmad_bilal/ui/widgets/dumb_widgets/contact_row.dart';
import 'package:ahmad_bilal/ui/widgets/dumb_widgets/profile_image.dart';
import 'package:ahmad_bilal/ui/widgets/dumb_widgets/start_project.dart';
import 'package:ahmad_bilal/ui/widgets/smart_widgets/show_up.dart';
import 'package:flutter/material.dart';

class MobileLayout extends StatelessWidget {
  const MobileLayout({Key? key, required this.model}) : super(key: key);

  final HomeViewModel model;

  @override
  Widget build(BuildContext context) {
    const imageHeight = 300.0;
    const int minDelay = 300;
    return Column(
      children: [
        SizedBox(
          height: imageHeight,
          width: double.infinity,
          child: Stack(
            fit: StackFit.expand,
            children: [
              const BackgroundImage(),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Column(
                    mainAxisSize:MainAxisSize.min,
                    children: [
                      StartProject(onTapHireAhmad: model.sendEmail),
                      const SizedBox(height: 16),
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
            ],
          ),
        ),
        const SizedBox(height: 32),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: ShowUp(
            delay: minDelay,
            child: ProfileImage(
              nameStyle: Theme.of(context).textTheme.headline2,
            ),
          ),
        ),
        const Padding(
          padding: EdgeInsets.all(16.0),
          child: IntroWidget(introTextAlign: TextAlign.center,),
        ),
      ],
    );
  }
}
