import 'package:ahmad_bilal/app/utils/strings.dart';

import 'package:ahmad_bilal/ui/widgets/dumb_widgets/basic_info.dart';
import 'package:ahmad_bilal/ui/widgets/dumb_widgets/skills.dart';
import 'package:ahmad_bilal/ui/widgets/dumb_widgets/profile_image.dart';
import 'package:ahmad_bilal/ui/widgets/dumb_widgets/testimonials.dart';

import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class HomeDrawer extends StatelessWidget {
  const HomeDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final drawerWidth = getValueForScreenType<double?>(context: context, mobile: null,tablet: 250,desktop: 300);
    return Drawer(
      width: drawerWidth,
      backgroundColor: colorScheme.background,
      child: SingleChildScrollView(
        child: Column(
          children: [
            AspectRatio(
              aspectRatio: 1.23,
              child: Container(
                padding: const EdgeInsets.all(16),
                color: colorScheme.surface,
                child: const ProfileImage()
              ),
            ),
            const SizedBox(
              height: 14,
            ),
            const BasicInfoWidget(),
            const Padding(padding: EdgeInsets.all(8.0), child: Divider()),
            Text(
              Strings.about,
              style: Theme.of(context).textTheme.headline1,
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16),
              child: Text(
                Strings.intro,
                style: Theme.of(context).textTheme.bodyText1,
                textAlign: TextAlign.center,
              ),
            ),
            const Padding(padding: EdgeInsets.all(8.0), child: Divider()),
            Text(
              Strings.skills,
              style: Theme.of(context).textTheme.headline1,
            ),
            const SizedBox(height: 16),
            const Skills(),
            const Padding(padding: EdgeInsets.all(8.0), child: Divider()),
            const Testimonials(),
            const SizedBox(
              height: 8,
            )
          ],
        ),
      ),
    );
  }
}
