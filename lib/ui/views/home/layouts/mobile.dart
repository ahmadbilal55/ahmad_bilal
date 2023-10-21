import 'package:ahmad_bilal/app/extensions.dart';
import 'package:ahmad_bilal/ui/views/home/widgets/intro.widget.dart';
import 'package:ahmad_bilal/ui/views/home/home_viewmodel.dart';
import 'package:ahmad_bilal/ui/widgets/dumb_widgets/background_image.dart';
import 'package:ahmad_bilal/ui/widgets/dumb_widgets/contact_row.dart';
import 'package:ahmad_bilal/ui/widgets/dumb_widgets/profile_image.dart';
import 'package:ahmad_bilal/ui/widgets/dumb_widgets/start_project.dart';
import 'package:ahmad_bilal/ui/widgets/smart_widgets/show_up.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class MobileLayout extends StatelessWidget {
  const MobileLayout({Key? key, required this.model}) : super(key: key);

  final HomeViewModel model;

  @override
  Widget build(BuildContext context) {
    final imageHeight = getValueForScreenType<double>(
        context: context, mobile: 250, desktop: 300, tablet: 300);
    const int minDelay = 300;
    return SizedBox(
      height: MediaQuery.sizeOf(context).height,
      child: Column(
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
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        StartProject(onTapHireAhmad: model.sendEmail),
                        const SizedBox(height: 16),
                        ContactRow(
                          onTapUpwork: model.openUpwork,
                          onTapLinkedIn: model.openLinkedIn,
                          onTapMedium: model.openMedium,
                          onTapStackoverflow: model.openStackoverflow,
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
          Expanded(
            child: Center(
              child: ShowUp(
                delay: minDelay,
                child: ProfileImage(
                  nameStyle:
                      context.theme.textTheme.headlines.headlineBold.copyWith(
                    color: context.theme.labels.primary,
                  ),
                ),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(16.0),
            child: IntroWidget(
              introTextAlign: TextAlign.center,
            ),
          ),
          const SizedBox(
            height: 36,
          ),
        ],
      ),
    );
  }
}
