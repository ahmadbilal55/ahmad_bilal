import 'package:ahmad_bilal/app/utils/strings.dart';
import 'package:ahmad_bilal/ui/views/home/home_viewmodel.dart';
import 'package:ahmad_bilal/ui/widgets/dumb_widgets/background_image.dart';
import 'package:ahmad_bilal/ui/widgets/dumb_widgets/basic_info.dart';
import 'package:ahmad_bilal/ui/widgets/dumb_widgets/profile_image.dart';
import 'package:ahmad_bilal/ui/views/skills/skills_view.dart';
import 'package:ahmad_bilal/ui/widgets/dumb_widgets/start_project.dart';
import 'package:ahmad_bilal/ui/views/testimonials/testimonials_view.dart';
import 'package:ahmad_bilal/ui/widgets/smart_widgets/show_up.dart';
import 'package:flutter/material.dart';

class MobileLayout extends StatelessWidget {
  const MobileLayout({Key? key, required this.model}) : super(key: key);

  final HomeViewModel model;

  @override
  Widget build(BuildContext context) {
    final imageHeight = MediaQuery.of(context).size.height * 0.3;
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
              Center(
                child: StartProject(onTapHireAhmad: model.sendEmail),
              ),
            ],
          ),
        ),
        const SizedBox(height: 32),
        ShowUp(
          delay: minDelay,
          child: ProfileImage(
            nameStyle: Theme.of(context).textTheme.headline2,
          ),
        ),
        const SizedBox(height: 16),
        const ShowUp(delay:minDelay+100,child: BasicInfoWidget()),
        const SizedBox(height: 32),
        Text(
          Strings.skills,
          style: Theme.of(context).textTheme.headline2,
        ),
        const SizedBox(height: 16),
         ShowUp(
          delay: minDelay + 200,
          child: ConstrainedBox(
            constraints:const BoxConstraints(maxHeight: 200,maxWidth: 500,),
            child: const SkillsView(),
          ),
        ),
        const SizedBox(height: 32),
        Text(
          Strings.testimonials,
          style: Theme.of(context).textTheme.headline2,
        ),
        const SizedBox(height: 16),
        const TestimonialsView(
          inflateHorizontal: true,
        ),
      ],
    );
  }
}
